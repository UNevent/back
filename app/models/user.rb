# frozen_string_literal: true

class User < ActiveRecord::Base 
  #has_many :events
  has_many :user_followed_associations, :foreign_key => :user_followed_id,
           :class_name => 'UserAssociation'
  has_many :follower_associations, :through => :follower_associations,
           :source => :follower
  has_many :follower_associations, :foreign_key => :follower_id,
           :class_name => 'UserAssociation'
  has_many :user_followed_associations, :through => :user_followed_associations,
           :source => :user_followed
  #before_save -> { skip_confirmation! }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
#  has_many :followers, :class_name => 'User_follow', :foreign_key => 'follower_id'
#  has_many :user_followeds, :class_name => 'User_follow', :foreign_key => 'user_followed_id'
  has_many :liked_event, dependent: :destroy
  has_many :events, through: :liked_event
  has_many :interests, dependent: :destroy
  has_many :tags, through: :interests
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User
  #def associations
  #  (follower_associations+ user_followed_associations).flatten.uniq
  #end
end
