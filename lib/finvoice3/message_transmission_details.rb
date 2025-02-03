module Finvoice3
	class MessageTransmissionDetails < Tag::Complex
		attr_accessor :message_sender_details
		attr_accessor :message_receiver_details
		attr_accessor :message_details
		
		def initialize
			super
			@message_sender_details = MessageSenderDetails.new
			@message_receiver_details = MessageReceiverDetails.new
			@message_details = MessageDetails.new
		end
		
		def sub_tags
			[
				@message_sender_details,
				@message_receiver_details,
				@message_details
			]
		end
	end
end
