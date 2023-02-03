class ProductController < ApplicationController
  skip_after_action :verify_same_origin_request
    # def index
    #     @product = Product.all 
    # end 

  def index
    @product = Product.all
    @categories = Category.all
  end

  def from_category
  @product = Product.joins(:categories).where(categories: { id: params[:cat_id] })
      render formats: [ :js ]
  end
end
# end
