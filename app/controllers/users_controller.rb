class UsersController < ApplicationController
  # before_action :authorize_user, only: :show

  def show
    if params[:id].present?
      @user =  User.find(params[:id])
    else
      @user = current_user
      @items = @user.items
    end
  end

  private

  def authorize_user
    user = User.find(params[:id])
    unless current_user == user
      flash[:alert] = "This view is private"
      redirect_to :home_index
    end
  end
end
