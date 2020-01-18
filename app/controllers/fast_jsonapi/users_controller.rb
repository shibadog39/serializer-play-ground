class FastJsonapi::UsersController < ApplicationController
  def index
    users = User.all
    render json: FastJsonapi::UsersSerializer.new(users).serialized_json
  end
end
