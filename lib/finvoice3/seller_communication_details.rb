module Finvoice3
	class SellerCommunicationDetails < Tag::Complex
		attr_accessor :seller_phone_number_identifier
		attr_accessor :seller_emailaddress_identifier
		
		def initialize
			super
			@seller_phone_number_identifier = Tag::Simple.new(name: "SellerPhoneNumberIdentifier")
			@seller_emailaddress_identifier = Tag::Simple.new(name: "SellerEmailaddressIdentifier")
		end
		
		def sub_tags
			[
				@seller_phone_number_identifier,
				@seller_emailaddress_identifier
			]
		end
	end
end
