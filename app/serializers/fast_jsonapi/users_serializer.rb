class FastJsonapi::UsersSerializer < ApplicationSerializer
  include FastJsonapi::ObjectSerializer

  class PostsSerializer < ApplicationSerializer
    attributes :title, :content
  end

  attribute :name

  attribute :posts do |record|
    PostsSerializer.new(record.posts).serialized_json
  end
end
