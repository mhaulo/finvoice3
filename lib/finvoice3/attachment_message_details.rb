module Finvoice3
	class AttachmentMessageDetails < Tag::Complex
		attr_accessor :attachment_message_identifier
		
		def initialize
			super
			@attachment_message_identifier = AttachmentMessageIdentifier.new
		end
		
		def sub_tags
			[@attachment_message_identifier]
		end
	end
end
