class UserFollow < ApplicationRecord
  belongs_to :follower, :class_name => 'User'
  belongs_to :user_followed, :class_name => 'User'
end
