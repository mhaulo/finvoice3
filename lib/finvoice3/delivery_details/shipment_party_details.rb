module Finvoice3
	class DeliveryDetails::ShipmentPartyDetails < Tag::Complex
		attr_accessor :shipment_party_identifier
		attr_accessor :shipment_organisation_name
		attr_accessor :shipment_organisation_department
		attr_accessor :shipment_organisation_tax_code
		attr_accessor :shipment_code
		attr_accessor :shipment_postal_address_details
		attr_accessor :shipment_site_code
		
		def initialize
			super
			@shipment_party_identifier = Finvoice3::PartyLegalRegId.new(name: "ShipmentPartyIdentifier")
			@shipment_organisation_name = Tag::Simple.new(name: "ShipmentOrganisationName")
			@shipment_organisation_department = Tag::Simple.new(name: "ShipmentOrganisationDepartment")
			@shipment_organisation_tax_code = Tag::Simple.new(name: "ShipmentOrganisationTaxCode")
			@shipment_code = PartyIdentifier.new(name: "ShipmentCode")
			@shipment_postal_address_details = ShipmentPostalAddressDetails.new
			@shipment_site_code = Tag::Simple.new(name: "ShipmentSideCode")
		end
		
		def sub_tags
			[
				@shipment_party_identifier,
				@shipment_organisation_name,
				@shipment_organisation_department,
				@shipment_organisation_tax_code,
				@shipment_code,
				@shipment_postal_address_details,
				@shipment_site_code
			]
		end
	end
end
