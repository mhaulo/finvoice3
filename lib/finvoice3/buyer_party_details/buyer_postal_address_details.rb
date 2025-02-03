module Finvoice3
	class BuyerPartyDetails::BuyerPostalAddressDetails < Tag::Complex
		attr_accessor :buyer_street_name
		attr_accessor :buyer_town_name
		attr_accessor :buyer_post_code_identifier
		attr_accessor :buyer_country_subdivision
		attr_accessor :country_code
		attr_accessor :country_name
		attr_accessor :buyer_post_office_box_identifier
		
		def initialize
			super
			@buyer_street_name = Tag::Simple.new(name: "BuyerStreetName")
			@buyer_town_name = Tag::Simple.new(name: "BuyerTownName")
			@buyer_post_code_identifier = Tag::Simple.new(name: "BuyerPostCodeIdentifier")
			@buyer_country_subdivision = Tag::Simple.new(name: "BuyerCountrySubdivision")
			@country_code = CountryCode.new
			@country_name = Tag::Simple.new(name: "CountryName")
			@buyer_post_office_box_identifier = Tag::Simple.new(name: "BuyerPostOfficeBoxIdentifier")
		end
		
		def sub_tags
			[
				@buyer_street_name,
				@buyer_town_name,
				@buyer_post_code_identifier,
				@buyer_country_code,
				@buyer_country_name
			]
		end
	end
end
