class ProductsController < ApplicationController

  def index

    @user = User.find(params[:id])
    @products = Product.where(user_id: @user)
  end

  def new
    @user = User.find(params[:id])
    @product = Product.new
  end

  def create

    # raise params.inspect
    # par = product_params
    # par.push(params.require(:product).permit(:user_id))
    @user = User.find(params[:id])
    @product = Product.new(user: @user)
    @product.update(product_params)


    if @product.save
      redirect_to products_path
    else
      render 'new'
    end

  end

  def show
    #raise params.inspect
    @user = User.find(params[:id])
    @product = Product.find(params[:id_p])
  end

  def destroy
    
  end

  def product_params
    # params.require(:product).permit(:title, :description, :deadline, :user_id)
    params.require(:product).permit(:title, :description, :deadline)
  end

end
