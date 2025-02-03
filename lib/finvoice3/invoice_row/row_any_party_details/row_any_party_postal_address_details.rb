module Finvoice3
	class InvoiceRow::RowAnyPartyDetails::RowAnyPartyPostalAddressDetails < Tag::Complex
		attr_accessor :row_any_party_street_name
		attr_accessor :row_any_party_town_name
		attr_accessor :row_any_party_post_code_identifier
		attr_accessor :row_any_party_country_subdivision
		attr_accessor :country_code
		attr_accessor :country_name
		attr_accessor :row_any_party_post_office_box_identifier
		
		def initialize
			super
			@row_any_party_street_name = Tag::Simple.new(name: "RowAnyPartyStreetName")
			@row_any_party_town_name = Tag::Simple.new(name: "RowAnyPartyTownName")
			@row_any_party_post_code_identifier = Tag::Simple.new(name: "RowAnyPartyPostCodeIdentifier")
			@row_any_party_country_subdivision = Tag::Simple.new(name: "RowAnyPartyCountrySubdivision")
			@country_code = CountryCode.new
			@country_name = Tag::Simple.new(name: "CountryName")
			@row_any_party_post_office_box_identifier = Tag::Simple.new(name: "RowAnyPartyPostOfficeBoxIdentifier")
		end
		
		def sub_tags
			[
				@row_any_party_street_name,
				@row_any_party_town_name,
				@row_any_party_post_code_identifier,
				@row_any_party_country_subdivision,
				@country_code,
				@country_name,
				@row_any_party_post_office_box_identifier
			]
		end
	end
end
