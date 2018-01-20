class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @render_time = Time.now().to_formatted_s(:long_ordinal)
    @units = '$' #currency units.
  end

end
