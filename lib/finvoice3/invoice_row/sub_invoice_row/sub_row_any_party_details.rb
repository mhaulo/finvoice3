module Finvoice3
	class InvoiceRow::SubInvoiceRow::SubRowAnyPartyDetails < Tag::Complex
		attr_accessor :sub_row_any_party_text
		attr_accessor :sub_row_any_party_identifier
		attr_accessor :sub_row_any_party_organisation_name
		attr_accessor :sub_row_any_party_organisation_department
		attr_accessor :sub_row_any_party_organisation_tax_code
		attr_accessor :sub_row_any_party_code
		attr_accessor :sub_row_any_party_postal_address_details
		attr_accessor :sub_row_any_party_organisation_unit_number
		attr_accessor :sub_row_any_party_site_code
		
		def index
			super
			@sub_row_any_party_text = Tag::Simple.new(name: "SubRowAnyPartyText")
			@sub_row_any_party_identifier = PartyLegalRegId.new(name: "SubRowAnyPartyIdentifier")
			@sub_row_any_party_organisation_name = Tag::Simple.new(name: "SubRowAnyPartyOrganisationName")
			@sub_row_any_party_organisation_department = Tag::Simple.new(name: "SubRowAnyPartyOrganisationDepartment")
			@sub_row_any_party_organisation_tax_code = Tag::Simple.new(name: "SubRowAnyPartyOrganisationTaxCode")
			@sub_row_any_party_code = PartyIdentifier.new(name: "SubRowAnyPartyCode")
			@sub_row_any_party_postal_address_details = SubRowAnyPartyPostalAddressDetails.new
			@sub_row_any_party_organisation_unit_number = Tag::Simple.new(name: "SubRowAnyPartyOrganisationUnitNumber")
			@sub_row_any_party_site_code = Tag::Simple.new(name: "SubRowAnyPartySiteCode")
		end
		
		def sub_tags
			[
				@sub_row_any_party_text,
				@sub_row_any_party_identifier,
				@sub_row_any_party_organisation_name,
				@sub_row_any_party_organisation_department,
				@sub_row_any_party_organisation_tax_code,
				@sub_row_any_party_code,
				@sub_row_any_party_postal_address_details,
				@sub_row_any_party_organisation_unit_number,
				@sub_row_any_party_site_code
			]
		end
	end
end
