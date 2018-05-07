class ProductsController < RankingController

  before_action :authenticate_user!, only: :search

  def index
    @product = Product.order('id ASC').limit(20)
  end

  def search
    @product = Product.where('title LIKE(?)', "%#{params[:keyword]}%").limit(20)
  end

  def show
    @product = Product.find(params[:id])
  end

end
