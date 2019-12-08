class Place < ApplicationRecord

    validates :latitude, presence: true 
    validates :longitude, presence: true  
    validates :name, presence: true, length: {in: 3..80}
end
