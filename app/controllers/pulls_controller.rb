class PullsController < ApplicationController
  before_action :set_pull, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @pulls = Pull.all
  end

  def new
    @pull = Pull.new
  end

  def create
    @pull = Pull.new(pull_params)
    if @pull.save
      redirect_to pull_path(@pull)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
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
    params.require(:pull).permit(:title, :description, :size, :price)
  end

  def set_pull
    @pull = Pull.find(params[:id])
  end
end
