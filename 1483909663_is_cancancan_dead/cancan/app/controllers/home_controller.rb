class HomeController < ApplicationController
  def index
    @homes = Home.all
    authorize! :read, @homes
  end
end
