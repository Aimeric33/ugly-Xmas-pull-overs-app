class PullsController < ApplicationController
  before_action :set_pull, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    if params[:query].present?
      sql_query = <<~SQL
        pulls.title @@ :query
        OR pulls.description @@ :query
        OR pulls.size @@ :query
        OR users.first_name @@ :query
        OR users.last_name @@ :query
      SQL
      @pulls = Pull.joins(:user).where(sql_query, query: "%#{params[:query]}%")
    else
      @pulls = Pull.all
    end
  end

  def new
    @pull = Pull.new
  end

  def create
    @pull = Pull.new(pull_params)
    @pull.user = current_user
    @pull.available = true
    if @pull.save
      redirect_to pull_path(@pull)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.new
  end

  def edit
  end

  def update
    @pull.update(pull_params)

    redirect_to pull_path(@pull)
  end

  def destroy
    @pull.destroy

    redirect_to root_path, status: :see_other
  end

  private

  def pull_params
    params.require(:pull).permit(:title, :description, :size, :price, :photo)
  end

  def set_pull
    @pull = Pull.find(params[:id])
  end
end
