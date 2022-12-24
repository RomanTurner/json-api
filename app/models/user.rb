class User < ApplicationRecord
    has_many :posts

    accepts_nested_attributes_for :posts, reject_if: ->(attributes){ attributes['title'].blank? }, allow_destroy: true
end
