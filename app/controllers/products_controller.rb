class ProductsController < ApplicationController
  #before_action :login
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
    # Use callbacks to share common setup or constraints between actions.
    def set_one
      @product = Product.find(params[:id])
    end
    
    # Use callbacks to share common setup or constraints between actions.
    def set_all
      @products = Product.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:product).permit(:ic,:name)
    end
end
