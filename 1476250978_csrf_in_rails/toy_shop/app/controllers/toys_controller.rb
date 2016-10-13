class ToysController < ApplicationController
  before_filter :authenticate_user!

  def index
    @toys = Toy.all
  end

  def destroy
    Toy.destroy(params[:id])
  end
end
