class PostSerializer
  include JSONAPI::Serializer
  attributes :title, :body
  belongs_to :user
end
