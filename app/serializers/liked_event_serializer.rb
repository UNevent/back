class LikedEventSerializer < ActiveModel::Serializer
  attributes :id
  has_one :event
  has_one :user
end
