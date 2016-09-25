class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    unless GovernmentValidatorService.new(params[:insurance_id]).valid?
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
    params.require(:user).permit(
      :name,
      :age
    )
  end
end
