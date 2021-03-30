class PostsController < ApplicationController
  def index
    @posts = Post.all  # すべてのレコードを@postsに代入
  end
  def new#新規投稿するためのアクション
  end

  def create
    Post.create(content: params[:content])# Postテーブルにほぞんする為の記述（）の中身は〜〜
  end
end
