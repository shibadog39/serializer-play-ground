class FastJsonapi::UsersController < ApplicationController
  def index
    users = User.all
    render json: FastJsonapi::UsersSerializer.new(users).serializable_hash
  end
end
