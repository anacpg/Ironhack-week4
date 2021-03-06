class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
    @product = Product.new(user: @user)
    # @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create

    @user = User.new(user_params)

    if @user.save
      redirect_to action: 'index'
    else
      render action: 'new'
    end

  end

  def destroy
    @user = User.find(params[:id])
    #@user.destroy(params[:id])
    @user.destroy
    redirect_to users_path,  notice: 'Twot was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name)
    end
end
