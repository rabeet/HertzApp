class ProductsController < ApplicationController
  before_action :loggedIn
  before_action :set_one, only: [:show, :edit, :update, :destroy, :history, :prerent, :postrent, :prereturn, :postreturn]
  before_action :set_all, only: [:index]
  
  def index
  end
  
  def show
  end
  
  def new
  end
  
  def create
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end

  def history
  end

  def prerent
  end

  def postrent
  end

  def prereturn
  end

  def postreturn
  end

  private
  
    def loggedIn
      @user = User.find_by(id: session[:user_id])
      if @user.nil?
        redirect_to login_url
      end
    end
    
    # Use callbacks to share common setup or constraints between actions.
    def set_one
      @product = Product.find(params[:id])
      @trans = Transaction.where(product_id: @product.id)
    end
    
    # Use callbacks to share common setup or constraints between actions.
    def set_all
      @products = Product.all
      @num_products = @products.nil? ? 0 : @products.size()
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:product).permit(:ic,:name)
    end
end
