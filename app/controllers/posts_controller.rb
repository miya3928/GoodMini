class PostsController < ApplicationController
  
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post, notice: "投稿に成功しました！"
    else
      render :new, alert: "投稿に失敗しました。"
    end   
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
  end

  def index
    @posts = Post.all
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end  
end
