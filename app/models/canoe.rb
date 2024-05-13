class Canoe < ApplicationRecord
    has_many :competitions
    has_many :crewMembers
    validates :name, presence: true
    validates :max_crew, presence: true
end
