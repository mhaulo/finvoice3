module Finvoice3
	class AnyPartyCommunicationDetails < Tag::Complex
		attr_accessor :any_party_phone_number_identifier
		attr_accessor :any_party_emailaddress_identifier
		
		def initialize
			super
			@any_party_phone_number_identifier = Tag::Simple.new(name: "AnyPartyPhoneNumberIdentifier")
			@any_party_emailaddress_identifier = Tag::Simple.new(name: "AnyPartyEmailaddressIdentifier")
		end
		
		def sub_tags
			[
				@any_party_phone_number_identifier,
				@any_party_emailaddress_identifier
			]
		end
	end
end
