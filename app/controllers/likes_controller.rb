class LikesController < ApplicationController
  before_action :set_post

  def create
    current_user.likes.create(post: @post)
    redirect_to @post
  end

  def destroy
    like = current_user.likes.find_by(post: @post)
    like.destroy if like
    redirect_to @post
  end
  private
   def set_post
    @post = Post.find(params[:post_id])
   end  
end
