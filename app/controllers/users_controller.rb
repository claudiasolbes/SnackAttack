class UsersController < ApplicationController

  before_action :find_params, only: [:show, :edit, :update]

  def new
    @user = User.new
  end

  def create #add validation (maybe?)
    @user = User.new(user_params)
    @user.save
    redirect_to user_path(@user)
  end

  def show
  end

  def edit
  end

  def update
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end

  def find_params
    @user = User.find(params[:id])
  end

end
