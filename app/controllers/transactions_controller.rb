class TransactionsController < ApplicationController
  before_action :loggedIn
  
  def search
  end
  
  def index
  end
  
  def initiate
    @transaction = Transaction.new
    @product = Product.find(params[:id])
  end
  
  def submit
    product_id = params[:id]
    ttype = params[:transaction][:transtype] # transaction type always shows as 0
    image = params[:transaction][:image]
    
    @product = Product.find(product_id)
    @transaction = Transaction.new
    @transaction.product_id = product_id
    @transaction.transtype = ttype
    @transaction.image = image
    
    if @transaction.save
        redirect_to @product, :notice => "Transaction Saved"
      else
        redirect_to root_path
    end
    
  end
  
  def show
    @transaction = Transaction.find(params[:id])
    @ic = @transaction.product.ic
    @pics = @transaction.image
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
      redirect_to new_product_path, :alert => "Equipment with given IC# does not exist. Please create new Equipment below."
    end
  end
  
  private
  
  def loggedIn
      @user = User.find_by(id: session[:user_id])
      if @user.nil?
        redirect_to login_url
      end
  end
  
end
