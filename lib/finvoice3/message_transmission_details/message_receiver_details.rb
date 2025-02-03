module Finvoice3
	class MessageTransmissionDetails::MessageReceiverDetails < Tag::Complex
		attr_accessor :to_identifier
		attr_accessor :to_intermediator
		
		def initialize
			super
			@to_identifier = Finvoice3::ElectronicAddrId.new(name: "ToIdentifier")
			@to_intermediator = Tag::Simple.new(name: "ToIntermediator")
		end
		
		def sub_tags
			[
				@to_identifier,
				@to_intermediator
			]
		end
	end
end
