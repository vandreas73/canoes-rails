class Canoe < ApplicationRecord
    has_many :competitions
    has_many :crewMembers
end
