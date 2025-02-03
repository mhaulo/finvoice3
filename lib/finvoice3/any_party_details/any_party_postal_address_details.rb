module Finvoice3
	class AnyPartyDetails::AnyPartyPostalAddressDetails < Tag::Complex
		attr_accessor :any_party_street_name
		attr_accessor :any_party_town_name
		attr_accessor :any_party_post_code_identifier
		attr_accessor :any_party_country_subdivision
		attr_accessor :country_code
		attr_accessor :country_name
		attr_accessor :any_party_post_office_box_identifer
		
		def initialize
			super
			@any_party_street_name = Tag::Simple.new(name: "AnyPartyStreetName")
			@any_party_town_name = Tag::Simple.new(name: "AnyPartyTownName")
			@any_party_post_code_identifier = Tag::Simple.new(name: "AnyPartyPostCodeIdentifier")
			@any_party_country_subdivision = Tag::Simple.new(name: "AnyPartyCountrySubdivision")
			@country_code = CountryCode.new
			@country_name = Tag::Simple.new(name: "CountryName")
			@any_party_post_office_box_identifer = Tag::Simple.new(name: "AnyPartyPostOfficeBoxIdentifier")
		end
		
		def sub_tags
			[
				@any_party_street_name,
				@any_party_town_name,
				@any_party_post_code_identifier,
				@any_party_country_subdivision,
				@country_code,
				@country_name,
				@any_party_post_office_box_identifer
			]
		end
	end
end
