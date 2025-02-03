module Finvoice3
	class MessageTransmissionDetails::MessageSenderDetails < Tag::Complex
		attr_accessor :from_identifier
		attr_accessor :from_intermediator
		
		def initialize
			super
			@from_identifier = Finvoice3::ElectronicAddrId.new(name: "FromIdentifier")
			@from_intermediator = Tag::Simple.new(name: "FromIntermediator")
		end
		
		def sub_tags
			[
				@from_identifier,
				@from_intermediator
			]
		end
	end
end
