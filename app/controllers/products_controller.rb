class ProductsController < RankingController

  def index
    @product = Product.order('id ASC').limit(20)
  end

end
