class UsersController < ApplicationController
  def index
    @users = User.page(params[:page]).per(5).reverse_order
  end

  def show
    @user = User.find(paramas[:id])
    @posts = @user.posts.page(params[:page]).per(8).reverse_order
  end
end
