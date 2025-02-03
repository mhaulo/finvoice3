module Finvoice3
	class DeliveryCommunicationDetails < Tag::Complex
		attr_accessor :delivery_phone_number_identifier
		attr_accessor :delivery_emailaddress_identifier
		
		def initialize
			super
			@delivery_phone_number_identifier = Tag::Simple.new(name: "DeliveryPhoneNumberIdentifier")
			@delivery_emailaddress_identifier = Tag::Simple.new(name: "DeliveryEmailaddressIdentifier")
		end
		
		def sub_tags
			[
				@delivery_phone_number_identifier,
				@delivery_emailaddress_identifier
			]
		end
	end
end
