module Finvoice3
	class BuyerCommunicationDetails < Tag::Complex
		attr_accessor :buyer_phone_number_identifier
		attr_accessor :buyer_emailaddress_identifier
		
		def initialize
			super
			@buyer_phone_number_identifier = Tag::Simple.new(name: "BuyerPhoneNumberIdentifier")
			@buyer_emailaddress_identifier = Tag::Simple.new(name: "BuyerEmailaddressIdentifier")
		end
		
		def sub_tags
			[
				@buyer_phone_number_identifier,
				@buyer_emailaddress_identifier
			]
		end
	end
end
