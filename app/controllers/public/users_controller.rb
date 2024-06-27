class Public::UsersController < ApplicationController
  before_action :authenticate_user!

  def mypage
    @user = User.find(params[:id])
  end
  
  def new
  end

  def index
  end

  def show
  end

  def create
  end

  def index
  end

  def edit
  end

  def update
  end
end
