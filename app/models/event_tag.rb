class EventTag < ApplicationRecord
  belongs_to :event
  belongs_to :tag

  def self.saveET(e_id, tags)
    puts("evento id: " + e_id.to_s)
    tags.each do |t_id|
      puts("tag ids "+ t_id.to_s)
      et=EventTag.new(event_id:e_id, tag_id: t_id)
      et.save
    end
  end
end
