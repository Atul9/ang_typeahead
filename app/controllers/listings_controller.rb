class ListingsController < ApplicationController
  def index
  end

  def search
    countries = Country.where("name like ?", "%#{params[:search]}%").pluck(:name)
    render json: {names: countries}
  end
end
