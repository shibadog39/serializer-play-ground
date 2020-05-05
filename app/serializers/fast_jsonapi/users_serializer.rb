class FastJsonapi::UsersSerializer < FastJsonapi::ApplicationSerializer
  class PostsSerializer < FastJsonapi::ApplicationSerializer
    attributes :id, :title, :content
  end

  attributes :id, :name

  attribute :posts do |record|
    PostsSerializer.new(record.posts).serializable_hash
  end
end
