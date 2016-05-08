class NowController < ApplicationController
  def index
    @products = Product.all
  end
end
