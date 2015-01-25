class TransactionsController < ApplicationController
  def search
  end
  
  def index
  end
  
  def initiate
    @transaction = Transaction.new
    @product = Product.find(params[:id])
  end
  
  
  def new
   @product = Product.new
  end
  
  def create
    @ic = params[:product][:ic]
    @product = Product.find_by(ic: @ic)
    if !@product.nil?
      redirect_to @product
    else
      redirect_to new_product_path
    end
  end
  
end
