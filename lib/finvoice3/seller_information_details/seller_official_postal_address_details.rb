module Finvoice3
	class SellerInformationDetails::SellerOfficialPostalAddressDetails < Tag::Complex
		attr_accessor :seller_official_street_name
		attr_accessor :seller_official_town_name
		attr_accessor :seller_official_post_code_identifier
		attr_accessor :seller_official_country_subdivision
		attr_accessor :country_code
		attr_accessor :country_name
		
		def initialize
			super
			@seller_official_street_name = Tag::Simple.new(name: "SellerOfficialStreetName")
			@seller_official_town_name = Tag::Simple.new(name: "SellerOfficialTownName")
			@seller_official_post_code_identifier = Tag::Simple.new(name: "SellerOfficialPostCodeIdentifier")
			@seller_official_country_subdivision = Tag::Simple.new(name: "SellerOfficialCountrySubdivision")
			@country_code = CountryCode.new
			@country_name = Tag::Simple.new(name: "CountryName")
		end
		
		def sub_tags
			[
				@seller_official_street_name,
				@seller_official_town_name,
				@seller_official_post_code_identifier,
				@seller_official_country_subdivision,
				@country_code,
				@country_name
			]
		end
	end
end
