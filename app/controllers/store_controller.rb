class StoreController < ApplicationController
  include StoreIndexVisitsCounter

  before_action :count_store_index_visits, only: [:index]

  def index
    @products = Product.order(:title)
  end
end
