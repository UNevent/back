class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :latitude, :longitude
end
