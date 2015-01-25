module ProductsHelper
  def all_products
    @all_assignments ||= Product.all
  end
end
