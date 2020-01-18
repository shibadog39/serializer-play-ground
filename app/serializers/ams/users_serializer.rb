class Ams::UsersSerializer < ActiveModel::Serializer
  attribute :name
  has_many :posts,  serializer: Ams::PostsSerializer
end
