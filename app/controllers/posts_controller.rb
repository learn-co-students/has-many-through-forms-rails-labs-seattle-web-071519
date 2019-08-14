require 'pry'

class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    # binding.pry
    @categories = @post.get_category_names
    @comments = @post.comments
    @users = @comments.collect do |comment|
      comment.user
    end.uniq
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @categories = Category.all
  end

  def create
    # byebug
    @post = Post.create(post_params)
    redirect_to @post
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids: [], categories_attributes: [:name])
  end
end
