class StoreController < ApplicationController
  include StoreIndexVisitsCounter
  include CurrentCart

  before_action :count_store_index_visits, only: [:index]
  before_action :set_cart

  def index
    @products = Product.order(:title)
  end
end
