module Finvoice3
	class FactoringAgreementDetails < Tag::Complex
		attr_accessor :factoring_agreement_identifier
		attr_accessor :transmission_list_identifier
		attr_accessor :endorsement_clause_code
		attr_accessor :factoring_type_code
		attr_accessor :factoring_free_text
		attr_accessor :factoring_party_identifier
		attr_accessor :factoring_party_name
		attr_accessor :factoring_party_postal_address_details
		
		def initialize
			super
			@factoring_agreement_identifier = Tag::Simple.new(name: "FactoringAgreementIdentifier")
			@transmission_list_identifier = Tag::Simple.new(name: "TransmissionListIdentifier")
			@endorsement_clause_code = Tag::Simple.new(name: "EndorsementClauseCode")
			@factoring_type_code = Tag::Simple.new(name: "FactoringTypeCode")
			@factoring_free_text = Tag::Simple.new(name: "FactoringFreeText")
			@factoring_party_identifier = PartyLegalRegId.new(name: "FactoringPartyIdentifier")
			@factoring_party_name = Tag::Simple.new(name: "FactoringPartyName")
			@factoring_party_postal_address_details = FactoringPartyPostalAddressDetails.new
		end
		
		def sub_tags
			[
				@factoring_agreement_identifier,
				@transmission_list_identifier,
				@endorsement_clause_code,
				@factoring_type_code,
				@factoring_free_text,
				@factoring_party_identifier,
				@factoring_party_name,
				@factoring_party_postal_address_details
			]
		end
	end
end
