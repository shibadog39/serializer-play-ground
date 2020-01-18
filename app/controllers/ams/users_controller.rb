class Ams::UsersController < ApplicationController
  def index
    users = User.all
    render json: users, each_serializer: Ams::UsersSerializer
  end
end
