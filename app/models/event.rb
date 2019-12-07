class Event < ApplicationRecord
  belongs_to :user
  belongs_to :place
  has_many :event_tags, dependent: :destroy
  has_many :tags, through: :event_tags
  has_many :liked_event, dependent: :destroy
  has_many :users, through: :liked_event

  validates :title, presence: true, uniqueness:  true
  validates_associated :user

  def self.create_with_tag(params)
    @tags= params[:tags]
    event = Event.new(params)
    puts("tags: "+ params.to_s )
    if event.save
      puts(params[:tags])
      EventTag.saveET(event.id, @tags)
    else
      puts(event.errors)
    end
    event
  end

  def self.created_by(owner)
    events=Event.where(user_id: owner)
  end
  
end
