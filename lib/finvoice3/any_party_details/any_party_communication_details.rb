module Finvoice3
	class AnyPartyDetails::AnyPartyCommunicationDetail < Tag::Complex
		attr_accessor :any_party_phone_number_identifier
		attr_accessor :any_party_email_address_identifier
		
		def index
			super
			@any_party_phone_number_identifier = Tag::Simple.new(name: "AnyPartyPhoneNumberIdentifier")
			@any_party_email_address_identifier = Tag::Simple.new(name: "AnyPartyEmailAddressIdentifier")
		end
		
		def sub_tags
			[
				@any_party_phone_number_identifier,
				@any_party_email_address_identifier
			]
		end
	end
end
