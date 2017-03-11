class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    authorize_action_for(@articles)
  end

  def show
  end
end
