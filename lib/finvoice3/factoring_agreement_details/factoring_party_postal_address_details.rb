module Finvoice3
	class FactoringAgreementDetails::FactoringPartyPostalAddressDetails < Tag::Complex
		attr_accessor :factoring_party_street_name
		attr_accessor :factoring_party_town_name
		attr_accessor :factoring_party_post_cost_identifier
		attr_accessor :factoring_party_country_subdivision
		attr_accessor :country_code
		attr_accessor :country_name
		attr_accessor :factoring_party_post_office_box_identifier
		
		def initialize
			super
			@factoring_party_street_name = Tag::Simple.new(name: "FactoringPartyStreetName")
			@factoring_party_town_name = Tag::Simple.new(name: "FactoringPartyTownName")
			@factoring_party_post_cost_identifier = Tag::Simple.new(name: "FactoringPartyPostCostIdentifier")
			@factoring_party_country_subdivision = Tag::Simple.new(name: "FactoringPartyCountrySubdivision")
			@country_code = CountryCode.new
			@country_name = Tag::Simple.new(name: "CountryName")
			@factoring_party_post_office_box_identifier = Tag::Simple.new(name: "FactoringPartyPostOfficeBoxIdentifier")
		end
		
		def sub_tags
			[
				@factoring_party_street_name,
				@factoring_party_town_name,
				@factoring_party_post_cost_identifier,
				@factoring_party_country_subdivision,
				@country_code,
				@country_name,
				@factoring_party_post_office_box_identifier
			]
		end
	end
end
