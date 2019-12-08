class InterestSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :tag
end
