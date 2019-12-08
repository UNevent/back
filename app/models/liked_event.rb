class LikedEvent < ApplicationRecord
  belongs_to :event
  belongs_to :user

  def self.count_likes(id_event, id_user=0)
    data={}
    data["quantity"]=LikedEvent.where(event_id: id_event).count
    data["me"]=LikedEvent.where(event_id: id_event, user_id:id_user).exists?
    data
  end

  def self.like_me(id_user, id_event)
    LikedEvent.where(event_id: id_event, user_id:id_user).exists?
  end
end
