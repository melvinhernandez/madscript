class Script < ActiveRecord::Base
	belongs_to :author
	has_many :stanzas
end
