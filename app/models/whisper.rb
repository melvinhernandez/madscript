class Whisper < ActiveRecord::Base
	belongs_to :stanza
	has_one :author
end
