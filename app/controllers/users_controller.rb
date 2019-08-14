class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
    @comments = @user.comments
    @comment_post_ids = @comments.collect do |comment|
      comment.post_id
    end
    @commented_posts = @posts.select do |post|
      @comment_post_ids.include?(post.id)
    end
  end

end
