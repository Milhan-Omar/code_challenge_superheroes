class HeroPowersController < ApplicationController
  protect_from_forgery with: :null_session
  rescue_from ActiveRecord::RecordInvalid, with: :invalid_heropower_params

end
