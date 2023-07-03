class PowersController < ApplicationController
 # Cross-Site Request Forgery
 protect_from_forgery with: :null_session
rescue_from ActiveRecord::RecordNotFound, with: :not_valid_power_params
rescue_from ActiveRecord::RecordNotFound, with: :not_found_power 
 wrap_parameters format: []
 def index
  powers = Power.all
  render json: powers, status: :ok
 end
 def show
  power = Power.find(params[:id])
  render json: power, status: :ok
 end
 
 private
 def power_params
  params.permit(:description)
 end
 def not_valid_power_params(invalid)
  render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
 end
 def not_found_power
  render json: { error: "Power not found" }, status: :not_found
 end
end
