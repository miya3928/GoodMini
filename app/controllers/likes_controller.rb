class LikesController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    current_user.likes.create(post: post)
    redirect_to posts_path
  end

  def destroy
    post = Post.find(params[:post_id])
    current_user.likes.find_by(post: post)
    redirect_to posts_path
  end
end
