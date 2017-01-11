class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = policy_scope(Post)
    authorize @posts
  end
end
