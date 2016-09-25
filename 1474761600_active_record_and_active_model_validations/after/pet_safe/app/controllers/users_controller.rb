class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = UserFactoryService.new(user_params, params[:insurance_id])
    if @user.save
      render 'index'
    else
      redirect_to(action: "new")
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
