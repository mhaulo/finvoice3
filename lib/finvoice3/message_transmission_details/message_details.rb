module Finvoice3
	class MessageTransmissionDetails::MessageDetails < Tag::Complex
		attr_accessor :message_identifier
		attr_accessor :message_time_stamp
		attr_accessor :ref_to_message_identifier
		attr_accessor :implementation_code
		attr_accessor :specification_identifier
		
		
		def initialize
			super
			@message_identifier = Tag::Simple.new(name: "MessageIdentifier")
			@message_time_stamp = Tag::Simple.new(name: "MessageTimeStamp")
			@ref_to_message_identifier = Tag::Simple.new(name: "RefToMessageIdentifier")
			@implementation_code = Tag::Simple.new(name: "ImplementationCode")
			@specification_identifier = Tag::Simple.new(name: "SpecificationIdentifier") #"EN16931"
		end
		
		def sub_tags
			[
				@message_identifier,
				@message_time_stamp,
				@ref_to_message_identifier,
				@implementation_code,
				@specification_identifier
			]
		end
	end
end
