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
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User
  def associations
    (follower_associations+ user_followed_associations).flatten.uniq
  end
end
