class Tag < ApplicationRecord    
    has_many :event_tags, dependent: :destroy
    has_many :events, through: :event_tags
    validates :name, presence: true, length: {in: 3..20}
end
