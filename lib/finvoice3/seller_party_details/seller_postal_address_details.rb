module Finvoice3
	class SellerPartyDetails::SellerPostalAddressDetails < Tag::Complex
		attr_accessor :seller_street_name
		attr_accessor :seller_town_name
		attr_accessor :seller_post_code_identifier
		attr_accessor :seller_country_subdivision
		attr_accessor :country_code
		attr_accessor :country_name
		attr_accessor :seller_post_office_box_identifier
		
		def initialize
			super
			@seller_street_name = Tag::Simple.new(name: "SellerStreetName")
			@seller_town_name = Tag::Simple.new(name: "SellerTownName")
			@seller_post_code_identifier = Tag::Simple.new(name: "SellerPostCodeIdentifier")
			@seller_country_subdivision = Tag::Simple.new(name: "SellerCountrySubdivision")
			@country_code = CountryCode.new
			@country_name = Tag::Simple.new(name: "CountryName")
			@seller_post_office_box_identifier = Tag::Simple.new(name: "SellerPostOfficeBoxIdentifier")
		end
		
		def sub_tags
			[
				@seller_street_name,
				@seller_town_name,
				@seller_post_code_identifier,
				@seller_country_code,
				@seller_country_name
			]
		end
	end
end
