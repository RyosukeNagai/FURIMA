class ProductsController < ApplicationController
  before_action :set_ransack
  def new
  end

  def create
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_ransack
    @q = Product.ransack(params[:q])
  end
end
