class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :place_lat, :place_lng, :place_detail, :details, :poster
  has_one :user
end
