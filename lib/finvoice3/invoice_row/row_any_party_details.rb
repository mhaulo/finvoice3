module Finvoice3
	class InvoiceRow::RowAnyPartyDetails < Tag::Complex
		attr_accessor :row_any_party_text
		attr_accessor :row_any_party_identifier
		attr_accessor :row_any_party_organisation_name
		attr_accessor :row_any_party_organisation_department
		attr_accessor :row_any_party_organisation_tax_code
		attr_accessor :row_any_party_code
		attr_accessor :row_any_party_postal_address_details
		attr_accessor :row_any_party_organisation_unit_number
		attr_accessor :row_any_party_site_code
		
		def initialize
			super
			@row_any_party_text = Tag::Simple.new(name: "RowAnyPartyText")
			@row_any_party_identifier = PartyLegalRegId.new(name: "RowAnyPartyIdentifier")
			@row_any_party_organisation_name = Tag::Simple.new(name: "RowAnyPartyOrganisationName")
			@row_any_party_organisation_department = Tag::Simple.new(name: "RowAnyPartyOrganisationDepartment")
			@row_any_party_organisation_tax_code = Tag::Simple.new(name: "RowAnyPartyOrganisationTaxCode")
			@row_any_party_code = PartyIdentifier.new(name: "RowAnyPartyCode")
			@row_any_party_postal_address_details = RowAnyPartyPostalAddressDetails.new
			@row_any_party_organisation_unit_number = Tag::Simple.new(name: "RowAnyPartyOrganisationUnitNumber")
			@row_any_party_site_code = Tag::Simple.new(name: "RowAnyPartySiteCode")
		end
		
		def sub_tags
			[
				@row_any_party_text,
				@row_any_party_identifier,
				@row_any_party_organisation_name,
				@row_any_party_organisation_department,
				@row_any_party_organisation_tax_code,
				@row_any_party_code,
				@row_any_party_postal_address_details,
				@row_any_party_organisation_unit_number,
				@row_any_party_site_code
			]
		end
	end
end
