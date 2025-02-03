module Finvoice3
	class DeliveryPartyDetails < Tag::Complex
		attr_accessor :delivery_party_identifier
		attr_accessor :delivery_organisation_name
		attr_accessor :delivery_department
		attr_accessor :delivery_organisation_tax_code
		attr_accessor :delivery_code
		attr_accessor :delivery_postal_address_details
		
		def initialize
			super
			@delivery_party_identifier = PartyLegalRegId.new
			@delivery_organisation_name = Tag::Simple.new(name: "DeliveryOrganisationName")
			@delivery_department = Tag::Simple.new(name: "DeliveryDepartment")
			@delivery_organisation_tax_code = Tag::Simple.new(name: "DeliveryOrganisationTaxCode")
			@delivery_code = PartyIdentifier.new
			@delivery_postal_address_details = DeliveryPostalAddressDetails.new
		end
		
		def sub_tags
			[
				@delivery_party_identifier,
				@delivery_organisation_name,
				@delivery_department,
				@delivery_organisation_tax_code,
				@delivery_code,
				@delivery_postal_address_details
			]
		end
	end
end
