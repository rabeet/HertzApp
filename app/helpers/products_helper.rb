module ProductsHelper
  def all_products
    @all_products ||= Product.all
  end
end
