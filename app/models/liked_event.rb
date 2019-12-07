class LikedEvent < ApplicationRecord
  belongs_to :event
  belongs_to :user

  def self.liked_by(id)
    events=LikedEvent.where(user_id: id)
  end
end
