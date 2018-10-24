class UsersController < ApplicationController
  # before_action :get_user, only: [:show, :update, :destoy]
  # before_action :flash_action

  def new
    @user = User.new
  end

  def index
  end

  def signup
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.valid?
     @user.save
     redirect_to @user #profile
    else
      flash[:errors] = " Invalid Username or Password"
      render :signup
    end
  end


  def show
    @user = User.find(params[:id])
    @rolldice = RollDice.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      @user.save
      redirect_to user_path(@user)
    else
      render :signup
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to user_path(@user)
  end

  private

  # def get_user
  #   @user = User.find(params[:id])
  # end

  def user_params
    params.require(:user).permit(:name, :username, :password)
  end
end
