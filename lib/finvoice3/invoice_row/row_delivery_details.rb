module Finvoice3
	class InvoiceRow::RowDeliveryDetails < Tag::Complex
		attr_accessor :row_terminal_address_text
		attr_accessor :row_waybill_identifier
		attr_accessor :row_waybill_type_code
		attr_accessor :row_clearance_identifier
		attr_accessor :row_delivery_note_identifier
		attr_accessor :row_deliverer_name
		attr_accessor :row_deliverer_country_subdivision
		attr_accessor :row_deliverer_country_code
		attr_accessor :row_deliverer_country_name
		attr_accessor :row_mode_of_transport_identifier
		attr_accessor :row_carrier_name
		attr_accessor :row_vessel_name
		attr_accessor :row_location_identifier
		attr_accessor :row_transport_information_date
		attr_accessor :row_country_of_origin
		attr_accessor :row_country_of_destination_name
		attr_accessor :row_destination_country_code
		attr_accessor :row_place_of_discharge
		attr_accessor :row_final_destination_name
		attr_accessor :row_customs_info
		attr_accessor :row_manufacturer_article_identifier
		attr_accessor :row_manufacturer_identifier
		attr_accessor :row_manufacturer_name
		attr_accessor :row_manufacturer_country_subdivision
		attr_accessor :row_manufacturer_country_code
		attr_accessor :row_manufacturer_country_name
		attr_accessor :row_manufacturer_order_identifier
		attr_accessor :row_package_details
		
		def initialize
			super
			@row_terminal_address_text = Tag::Simple.new(name: "RowTerminalAddressText")
			@row_waybill_identifier = Tag::Simple.new(name: "RowWaybillIdentifier")
			@row_waybill_type_code = Tag::Simple.new(name: "RowWaybillTypeCode")
			@row_clearance_identifier = Tag::Simple.new(name: "RowClearanceIdentifier")
			@row_delivery_note_identifier = Tag::Simple.new(name: "RowDeliveryNoteIdentifier")
			@row_deliverer_name = Tag::Simple.new(name: "RowDelivererName")
			@row_deliverer_country_subdivision = Tag::Simple.new(name: "RowDelivererCountrySubdivision")
			@row_deliverer_country_code = CountryCode.new(name: "RowDelivererCountryCode")
			@row_deliverer_country_name = Tag::Simple.new(name: "RowDelivererCountryName")
			@row_mode_of_transport_identifier = Tag::Simple.new(name: "RowModeOfTransportIdentifier")
			@row_carrier_name = Tag::Simple.new(name: "RowCarrierName")
			@row_vessel_name = Tag::Simple.new(name: "RowVesselName")
			@row_location_identifier = Tag::Simple.new(name: "RowLocationIdentifier")
			@row_transport_information_date = Tag::Simple.new(name: "RowTransportInformationDate")
			@row_country_of_origin = Tag::Simple.new(name: "RowCountryOfOrigin")
			@row_country_of_destination_name = Tag::Simple.new(name: "RowCountryOfDestinationName")
			@row_destination_country_code = CountryCode.new(name: "RowDestinationCountryCode")
			@row_place_of_discharge = Tag::Simple.new(name: "RowPlaceOfDischarge")
			@row_final_destination_name = Tag::Simple.new(name: "RowFinalDestinationName")
			@row_customs_info = Finvoice3::InvoiceRow::CustomsInfo.new
			@row_manufacturer_article_identifier = Tag::Simple.new(name: "RowManufacturerArticleIdentifier")
			@row_manufacturer_identifier = Tag::Simple.new(name: "RowManufacturerIdentifier")
			@row_manufacturer_name = Tag::Simple.new(name: "RowManufacturerName")
			@row_manufacturer_country_subdivision = Tag::Simple.new(name: "RowManufacturerCountrySubdivision")
			@row_manufacturer_country_code = CountryCode.new(name: "RowManufacturerCountryCode")
			@row_manufacturer_country_name = Tag::Simple.new(name: "RowManufacturerCountryName")
			@row_manufacturer_order_identifier = Tag::Simple.new(name: "RowManufacturerOrderIdentifier")
			@row_package_details = RowPackageDetails.new
		end
		
		def sub_tags
			[
				@row_terminal_address_text,
				@row_waybill_identifier,
				@row_waybill_type_code,
				@row_clearance_identifier,
				@row_delivery_note_identifier,
				@row_deliverer_name,
				@row_deliverer_country_subdivision,
				@row_deliverer_country_code,
				@row_deliverer_country_name,
				@row_mode_of_transport_identifier,
				@row_carrier_name,
				@row_vessel_name,
				@row_location_identifier,
				@row_transport_information_date,
				@row_country_of_origin,
				@row_country_of_destination_name,
				@row_destination_country_code,
				@row_place_of_discharge,
				@row_final_destination_name,
				@row_customs_info,
				@row_manufacturer_article_identifier,
				@row_manufacturer_identifier,
				@row_manufacturer_name,
				@row_manufacturer_country_subdivision,
				@row_manufacturer_country_code,
				@row_manufacturer_country_name,
				@row_manufacturer_order_identifier,
				@row_package_details
			]
		end
	end
end
