module Finvoice3
	class DeliveryDetails::ShipmentPartyDetails::ShipmentPostalAddressDetails < Tag::Complex
		attr_accessor :shipment_street_name
		attr_accessor :shipment_town_name
		attr_accessor :shipment_post_code_identifier
		attr_accessor :shipment_country_subdivision
		attr_accessor :county_code
		attr_accessor :country_name
		attr_accessor :shipment_post_office_box_identifier
		
		def initialize
			super
			@shipment_street_name = Tag::Simple.new(name: "ShipmentStreetName")
			@shipment_town_name = Tag::Simple.new(name: "ShipmentTownName")
			@shipment_post_code_identifier = Tag::Simple.new(name: "ShipmentPostCodeIdentifier")
			@shipment_country_subdivision = Tag::Simple.new(name: "ShipmentCountrySubdivision")
			@county_code = CountryCode.new
			@country_name = Tag::Simple.new(name: "CountryName")
			@shipment_post_office_box_identifier = Tag::Simple.new(name: "ShipmentPostOfficeBoxIdentifier")
		end
		
		def sub_tags
			[
				@shipment_street_name,
				@shipment_town_name,
				@shipment_post_code_identifier,
				@shipment_country_subdivision,
				@county_code,
				@country_name,
				@shipment_post_office_box_identifier
			]
		end
	end
end
