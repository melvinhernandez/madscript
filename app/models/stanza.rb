class Stanza < ActiveRecord::Base
	has_many :whispers
	belongs_to :script
end
