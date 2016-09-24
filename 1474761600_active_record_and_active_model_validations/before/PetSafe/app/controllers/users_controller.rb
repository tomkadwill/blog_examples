class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    if params[:user][:age].to_i < 16
      render "new"
    elsif government_service.pet_age > 15
      render "new"
    end

    @user = User.create(user_params)
    if @user.save
      render 'index'
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end

  def government_service
    GovernmentService.new(params[:insurance_id])
  end
end
