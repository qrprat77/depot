module CurrentCart

  private
  
    def set_cart
      @cart = Cart.find(session[:cart_id])
      if session[:counter].nil?
        session[:counter] = 1
      else
        session[:counter]+= 1
      end
    rescue ActiveRecord::RecordNotFound
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end

end #CurrentCart module