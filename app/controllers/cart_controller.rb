class CartController < ApplicationController
  def create
    Cart.new(user: current_user)
  end
end
