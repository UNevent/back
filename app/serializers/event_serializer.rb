class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :place_detail, :details, :poster
  has_one :user
  has_one :place
end
