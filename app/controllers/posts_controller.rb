class PostsController < ApplicationController
  def index  # indexアクションを定義した
    @posts = Post.all  # すべてのレコードを@postsに代入
  end

  def index
    @posts = Post.all.order(id: "DESC")
  end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end
end
