module Finvoice3
	class AnyPartyDetails < Tag::Complex
		attr_accessor :any_party_text
		attr_accessor :any_party_identifier
		attr_accessor :any_party_organisation_names
		attr_accessor :any_party_organisation_department
		attr_accessor :any_party_organisation_tax_code
		attr_accessor :any_party_code
		attr_accessor :any_party_contact_person_name
		attr_accessor :any_party_contact_person_function
		attr_accessor :any_party_contact_person_department
		attr_accessor :any_party_communication_details
		attr_accessor :any_party_postal_address_details
		
		def initialize
			super
			@any_party_text = Tag::Simple.new(name: "AnyPartyText")
			@any_party_identifier = PartyLegalRegId.new
			@any_party_organisation_names = []
			@any_party_organisation_department = Tag::Simple.new(name: "AnyPartyOrganisationDepartment")
			@any_party_organisation_tax_code = Tag::Simple.new(name: "AnyPartyOrganisationTaxCode")
			@any_party_code = PartyIdentifier.new
			@any_party_contact_person_name = Tag::Simple.new(name: "AnyPartyContactPersonName")
			@any_party_contact_person_function = Tag::Simple.new(name: "AnyPartyContactPersonFunction")
			@any_party_contact_person_department = Tag::Simple.new(name: "AnyPartyContactPersonDepartment")
			@any_party_communication_details = AnyPartyCommunicationDetails.new
			@any_party_postal_address_details = AnyPartyPostalAddressDetails.new
		end

		def sub_tags
			[
				@any_party_text,
				@any_party_identifier,
				*@any_party_organisation_names,
				@any_party_organisation_department,
				@any_party_organisation_tax_code,
				@any_party_code,
				@any_party_contact_person_name,
				@any_party_contact_person_function,
				@any_party_contact_person_department,
				@any_party_communication_details,
				@any_party_postal_address_details
			]
		end
	end
end
