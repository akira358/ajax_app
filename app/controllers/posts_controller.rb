class PostsController < ApplicationController
  def index
    @posts = Post.order(id: "DESC")  
  end
  # def new#新規投稿するためのアクション
  # end

  def create
    Post.create(content: params[:content])# Postテーブルにほぞんする為の記述（）の中身は〜〜
    redirect_to action: :index  # 追記する
  end
end
