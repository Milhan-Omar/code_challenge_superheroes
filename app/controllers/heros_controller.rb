class HerosController < ApplicationController
 rescue_from ActiveRecord::RecordNotFound, with: :hero_not_found
 def index
  heroes = Hero.all
  render json:  heroes, status: :ok 
 end
 def show
 hero = Hero.find(params[:id])
 render json: hero, serializer: HerowithpowerSerializer, status: :ok
 end
 private
 def hero_not_found
  render json: { error: "Hero not found" }, status: :not_found
 end
end
