class ListingsController < ApplicationController
  def index
  end

  def search
    countries = Country.where("name like ?", "%#{params[:search]}%").pluck(:name)
    name = countries.map{|x| {"name" => x}}
   # render json: {names: countries.map{|x| {"name" => x,"id" => x}}}.to_json
    render json: {names: countries}
  end
end
