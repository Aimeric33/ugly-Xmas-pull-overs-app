class My::PullsController < ApplicationController
  def index
    @pulls = current_user.pulls
  end
end
