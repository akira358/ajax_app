class PostsController < ApplicationController
  def index
    @posts = Post.order(id: "DESC")  
  end
  # def new#新規投稿するためのアクション
  # end

  def create
    post = Post.create(content: params[:content])
    render json:{ post: post }
  end
end
