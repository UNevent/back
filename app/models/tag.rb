class Tag < ApplicationRecord    
    has_many :event_tags, dependent: :destroy
    has_many :events, through: :event_tags
    has_many :interests, dependent: :destroy
    has_many :users, through: :interests
    validates :name, presence: true, length: {in: 3..20}

    def self.interested_in(user)
        self.joins(:interests).where(interests: {user_id: user})
    end
    
end
