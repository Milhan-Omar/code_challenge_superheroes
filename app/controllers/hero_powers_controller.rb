class HeroPowersController < ApplicationController
  protect_from_forgery with: :null_session
  rescue_from ActiveRecord::RecordInvalid, with: :invalid_heropower_params

 # def index
 #  heropowers = HeroPower.all
 #  render json: heropowers, status: :ok
 # end
 # def show
 #  heropower = HeroPower.find(id: params[:id])
 #  render json: heropower, status: :ok 
 # end
 def create
  heropower = HeroPower.create!(heropower_params)
  hero = Hero.find(heropower_params[:hero_id])
  render json: hero,serializer: HerowithpowerSerializer, status: :created
 end
 def heropower_params
  params.permit(:hero_id, :power_id, :strength)
 end
 def invalid_heropower_params(invalid)
  render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
 end
end
