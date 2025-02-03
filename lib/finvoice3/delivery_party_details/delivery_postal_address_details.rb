module Finvoice3
	class DeliveryPartyDetails::DeliveryPostalAddressDetails < Tag::Complex
		attr_accessor :delivery_street_name
		attr_accessor :delivery_town_name
		attr_accessor :delivery_post_cost_identifier
		attr_accessor :delivery_country_subdivision
		attr_accessor :country_code
		attr_accessor :country_name
		attr_accessor :delivery_post_office_box_identifier
		
		def initialize
			super
			@delivery_street_name = Tag::Simple.new(name: "DeliveryStreetName")
			@delivery_town_name = Tag::Simple.new(name: "DeliveryTownName")
			@delivery_post_cost_identifier = Tag::Simple.new(name: "DeliveryPostCostIdentifier")
			@delivery_country_subdivision = Tag::Simple.new(name: "DeliveryCountrySubdivision")
			@country_code = CountryCode.new
			@country_name = Tag::Simple.new(name: "CountryName")
			@delivery_post_office_box_identifier = Tag::Simple.new(name: "DeliveryPostOfficeBoxIdentifier")
		end
		
		def sub_tags
			[
				@delivery_street_name,
				@delivery_town_name,
				@delivery_post_cost_identifier,
				@delivery_country_subdivision,
				@country_code,
				@country_name,
				@delivery_post_office_box_identifier
			]
		end
	end
end
