class Admin::DashboardController < ApplicationController
  # http_basic_authenticate_with name: ENV['ADMIN_USERNAME'], password: ENV['ADMIN_PASSWORD'], only: [:show]

  def show
    @products_count = Product.all.count
    @categories_count = Category.all.count
  end
end
