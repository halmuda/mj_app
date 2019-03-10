class UsersController < ApplicationController
  def index
    @users = User.all.order(:name, :id)
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update!(user_params)
    redirect_to users_url, notice: "ユーザー「#{user.name}」を更新しました。"
  end

  def create
    user = User.new(user_params)
    user.save!
    redirect_to users_url, notice: "ユーザー「#{user.name}」を登録しました。"
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to users_url, notice: "ユーザー「#{user.name}」を削除しました。"
  end

  private

  def user_params
    params.require(:user).permit(:name, :mail, :description)
  end
end
