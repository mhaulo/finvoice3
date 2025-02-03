module Finvoice3
	class DeliveryDetails < Tag::Complex
		attr_accessor :delivery_date
		attr_accessor :delivery_period_details
		attr_accessor :shipment_party_details
		attr_accessor :delivery_method_text
		attr_accessor :delivery_terms_text
		attr_accessor :delivery_terms_code
		attr_accessor :terminal_address_text
		attr_accessor :waybill_identifier
		attr_accessor :waybill_type_code
		attr_accessor :clearance_identifer
		attr_accessor :delivery_note_identifier
		attr_accessor :deliverer_identifier
		attr_accessor :deliverer_name
		attr_accessor :deliverer_country_subdivision
		attr_accessor :deliverer_country_code
		attr_accessor :deliverer_country_name
		attr_accessor :mode_of_transport_identifier
		attr_accessor :carrier_name
		attr_accessor :vessel_name
		attr_accessor :location_identifier
		attr_accessor :transport_information_date
		attr_accessor :country_of_origin
		attr_accessor :country_of_destination_name
		attr_accessor :destination_country_code
		attr_accessor :place_of_discharge
		attr_accessor :final_destination_name
		attr_accessor :manufacturer_identifier
		attr_accessor :manufacturer_name
		attr_accessor :manufacturer_country_subdivision
		attr_accessor :manufacturer_country_code
		attr_accessor :manufacturer_country_name
		attr_accessor :manufacturer_order_identifier
		attr_accessor :package_details
		
		def initialize
			super
			@delivery_date = Tag::Simple.new(name: "DeliveryDate") # korvaa omalla tagilla
			@delivery_period_details = DeliveryPeriodDetails.new
			@shipment_party_details = ShipmentPartyDetails.new
			@delivery_method_text = Tag::Simple.new(name: "DeliveryMethodText")
			@delivery_terms_text = Tag::Simple.new(name: "DeliveryTermsText")
			@delivery_terms_code = Tag::Simple.new(name: "DeliveryTermsCode")
			@terminal_address_text = Tag::Simple.new(name: "TerminalAddressText")
			@waybill_identifier = Tag::Simple.new(name: "WaybillIdentifier")
			@waybill_type_code = Tag::Simple.new(name: "WaybillTypeCode")
			@clearance_identifer = Tag::Simple.new(name: "ClearanceIdentifier")
			@delivery_note_identifier = Tag::Simple.new(name: "DeliveryNoteIdentifier")
			@deliverer_identifier = Tag::Simple.new(name: "DelivererIdentifier")
			@deliverer_name = Tag::Simple.new(name: "DelivererName")
			@deliverer_country_subdivision = Tag::Simple.new(name: "DelivererCountrySubdivision")
			@deliverer_country_code = CountryCode.new(name: "DelivererCountryCode")
			@deliverer_country_name = Tag::Simple.new(name: "DelivererCountryName")
			@mode_of_transport_identifier = Tag::Simple.new(name: "ModeOfTransportIdentifier")
			@carrier_name = Tag::Simple.new(name: "CarrierName")
			@vessel_name = Tag::Simple.new(name: "VesselName")
			@location_identifier = Tag::Simple.new(name: "LocationIdentifier")
			@transport_information_date = Tag::Simple.new(name: "TransportInformationDate")
			@country_of_origin = Tag::Simple.new(name: "CountryOfOrigin")
			@country_of_destination_name = Tag::Simple.new(name: "CountryOfDestinationName")
			@destination_country_code = CountryCode.new(name: "DestinationCountryCode")
			@place_of_discharge = Tag::Simple.new(name: "PlaceOfDischarge")
			@final_destination_name = DestinationName.new(name: "FinalDestinationName")
			@manufacturer_identifier = Tag::Simple.new(name: "ManufacturerIdentifier")
			@manufacturer_name = Tag::Simple.new(name: "ManufacturerName")
			@manufacturer_country_subdivision = Tag::Simple.new(name: "ManufacturerCountrySubdivision")
			@manufacturer_country_code = CountryCode.new(name: "ManufacturerCountryCode")
			@manufacturer_country_name = Tag::Simple.new(name: "ManufacturerCountryName")
			@manufacturer_order_identifier = Tag::Simple.new(name: "ManufacturerOrderIdentifier")
			@package_details = PackageDetails.new
		end
		
		def sub_tags
			[
				@delivery_date,
				@delivery_period_details,
				@shipment_party_details,
				@delivery_method_text,
				@delivery_terms_text,
				@delivery_terms_code,
				@terminal_address_text,
				@waybill_identifier,
				@waybill_type_code,
				@clearance_identifer,
				@delivery_note_identifier,
				@deliverer_identifier,
				@deliverer_name,
				@deliverer_country_subdivision,
				@deliverer_country_code,
				@deliverer_country_name,
				@mode_of_transport_identifier,
				@carrier_name,
				@vessel_name,
				@location_identifier,
				@transport_information_date,
				@country_of_origin,
				@country_of_destination_name,
				@destination_country_code,
				@place_of_discharge,
				@final_destination_name,
				@manufacturer_identifier,
				@manufacturer_name,
				@manufacturer_country_subdivision,
				@manufacturer_country_code,
				@manufacturer_country_name,
				@manufacturer_order_identifier,
				@package_details
			]
		end
	end
end
