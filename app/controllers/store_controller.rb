class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @render_time = Time.now()
  end

end
