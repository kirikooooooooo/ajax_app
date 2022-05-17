class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
  end

  # def new
  # end

  def create
    post = Post.create(content: params[:content])
    render json:{ post: post } #1行上で定義した変数postの値を、JSONオプションでpostというキーとセットでJavaScriptに送信している。
  end
end
