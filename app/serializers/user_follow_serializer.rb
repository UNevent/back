class UserFollowSerializer < ActiveModel::Serializer
  attributes :id, :follower_id, :user_followed_id
end
