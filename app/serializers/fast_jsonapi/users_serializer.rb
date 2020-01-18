class FastJsonapi::UsersSerializer < FastJsonapi::ApplicationSerializer
  include FastJsonapi::ObjectSerializer

  class PostsSerializer < FastJsonapi::ApplicationSerializer
    attributes :title, :content
  end

  attribute :name

  attribute :posts do |record|
    PostsSerializer.new(record.posts).serialized_json
  end
end
