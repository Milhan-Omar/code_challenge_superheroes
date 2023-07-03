class HerosController < ApplicationController
 rescue_from ActiveRecord::RecordNotFound, with: :hero_not_found

 private
 def hero_not_found
  render json: { error: "Hero not found" }, status: :not_found
 end
end
