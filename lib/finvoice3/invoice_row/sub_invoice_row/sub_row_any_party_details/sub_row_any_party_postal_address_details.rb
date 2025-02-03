module Finvoice3
	class InvoiceRow::SubInvoiceRow::SubRowAnyPartyDetails::SubRowAnyPartyPostalAddressDetails < Tag::Complex
		attr_accessor :sub_row_any_party_street_name
		attr_accessor :sub_row_any_party_town_name
		attr_accessor :sub_row_any_party_post_code_identifier
		attr_accessor :sub_row_any_party_country_subdivision
		attr_accessor :country_code
		attr_accessor :country_name
		attr_accessor :sub_row_any_party_post_office_box_identifier
		
		def initialize
			super
			@sub_row_any_party_street_name = Tag::Simple.new(name: "SubRowAnyPartyStreetName")
			@sub_row_any_party_town_name = Tag::Simple.new(name: "SubRowAnyPartyTownName")
			@sub_row_any_party_post_code_identifier = Tag::Simple.new(name: "SubRowAnyPartyPostCodeIdentifier")
			@sub_row_any_party_country_subdivision = Tag::Simple.new(name: "SubRowAnyPartyCountrySubdivision")
			@country_code = CountryCode.new
			@country_name = Tag::Simple.new(name: "CountryName")
			@sub_row_any_party_post_office_box_identifier = Tag::Simple.new(name: "SubRowAnyPartyPostOfficeBoxIdentifier")
		end
		
		def sub_tags
			[
				@sub_row_any_party_street_name,
				@sub_row_any_party_town_name,
				@sub_row_any_party_post_code_identifier,
				@sub_row_any_party_country_subdivision,
				@country_code,
				@country_name,
				@sub_row_any_party_post_office_box_identifier
			]
		end
	end
end
