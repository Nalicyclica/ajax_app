class PostsController < ApplicationController

  def index
    @posts = Post.all.order(id: "DESC")
  end

  # def new
  # end

  def create
    post = Post.create(content: post_params)
    render json:{ post: post}
  end

  private

  def post_params
    params.require(:content)
  end

end
