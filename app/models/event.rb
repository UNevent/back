class Event < ApplicationRecord
  belongs_to :user
  belongs_to :place
  has_many :event_tags, dependent: :destroy
  has_many :tags, through: :event_tags
  has_many :liked_events, dependent: :destroy
  has_many :users, through: :liked_events

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

  def self.liked_by(user)
    events=Event.joins(:liked_events,:place,:user)
                .select('users.id, users.nickname as user_nick, places.id, places.name as place_name, places.latitude, places.longitude, events.*')
                .where(liked_events: {user_id: user})
    data=Array.new
    events.each do |e|
      ev={}
      ev["event"]=e
      ev["likes"]= LikedEvent.count_likes(e.id,user)
      data.push(ev)
    end
    data
  end

  def self.in_place(place, user=0)
    events=self.joins(:place, :user )
              .select('users.id, users.nickname as user_nick, places.id, places.name as place_name, places.latitude, places.longitude, events.*')
              .where(places: {id: place})
    data=Array.new
    events.each do |e|
      ev={}
      ev["event"]=e
      ev["likes"]= LikedEvent.count_likes(e.id,user)
      data.push(ev)
    end
    data
  end

  def self.with_tags(tags,user=0)
    events=self.joins(:event_tags,:place,:user)
              .select('users.id, users.nickname as user_nick, places.id, places.name as place_name, places.latitude, places.longitude, events.*')
              .where(event_tags:  {tag_id: tags})
    data=Array.new
    events.each do |e|
      ev={}
      ev["event"]=e
      ev["likes"]= LikedEvent.count_likes(e.id, user)
      data.push(ev)
    end
    data
  end

  def self.created_by(owner, user=0)
    events=Event.joins(:place,:user)
    .select('users.id, users.nickname as user_nick, places.id, places.name as place_name, places.latitude, places.longitude, events.*')
    .where(user_id: owner)   
    data=Array.new
    events.each do |e|
      ev={}
      ev["event"]=e
      ev["likes"]= LikedEvent.count_likes(e.id,user)
      data.push(ev)
    end
    data
  end


  def self.full(user=0)
    events=self.joins(:place,:user)
        .select('users.id, users.nickname as user_nick, places.id, places.name as place_name, places.latitude, places.longitude, events.*')
    data=Array.new
    events.each do |e|
      ev={}
      ev["event"]=e
      ev["likes"]= LikedEvent.count_likes(e.id,user)
      data.push(ev)
    end
    data
  end
  
end
