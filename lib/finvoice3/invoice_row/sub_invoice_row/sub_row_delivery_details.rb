module Finvoice3
	class InvoiceRow::SubInvoiceRow::SubRowDeliveryDetails < Tag::Complex
		attr_accessor :sub_row_terminal_address_text
		attr_accessor :sub_row_waybill_identifier
		attr_accessor :sub_row_waybill_type_code
		attr_accessor :sub_row_clearance_identifier
		attr_accessor :sub_row_delivery_note_identifier
		attr_accessor :sub_row_deliverer_name
		attr_accessor :sub_row_deliverer_country_subdivision
		attr_accessor :sub_row_deliverer_country_code
		attr_accessor :sub_row_deliverer_country_name
		attr_accessor :sub_row_place_of_discharge
		attr_accessor :sub_row_final_destination_name
		attr_accessor :sub_row_customs_info
		attr_accessor :sub_row_manufacturer_article_identifier
		attr_accessor :sub_row_manufacturer_identifier
		attr_accessor :sub_row_manufacturer_name
		attr_accessor :sub_row_manufacturer_country_subdivision
		attr_accessor :sub_row_manufacturer_country_code
		attr_accessor :sub_row_manufacturer_country_name
		attr_accessor :sub_row_manufacturer_order_identifier
		attr_accessor :sub_row_package_details
		
		def initialize
			super
			@sub_row_terminal_address_text = Tag::Simple.new(name: "SubRowTerminalAddressText")
			@sub_row_waybill_identifier = Tag::Simple.new(name: "SubRowWaybillIdentifier")
			@sub_row_waybill_type_code = Tag::Simple.new(name: "SubRowWaybillTypeCode")
			@sub_row_clearance_identifier = Tag::Simple.new(name: "SubRowClearanceIdentifier")
			@sub_row_delivery_note_identifier = Tag::Simple.new(name: "SubRowDeliveryNoteIdentifier")
			@sub_row_deliverer_name = Tag::Simple.new(name: "SubRowDelivererName")
			@sub_row_deliverer_country_subdivision = Tag::Simple.new(name: "SubRowDelivererCountrySubdivision")
			@sub_row_deliverer_country_code = CountryCode.new(name: "SubRowDelivererCountryCode")
			@sub_row_deliverer_country_name = Tag::Simple.new(name: "SubRowDelivererCountryName")
			@sub_row_place_of_discharge = Tag::Simple.new(name: "SubRowPlaceOfDischarge")
			@sub_row_final_destination_name = Tag::Simple.new(name: "SubRowFinalDestinationName")
			@sub_row_customs_info = Finvoice3::InvoiceRow::CustomsInfo.new(name: "SubRowCustomsInfo")
			@sub_row_manufacturer_article_identifier = Tag::Simple.new(name: "SubRowManufacturerArticleIdentifier")
			@sub_row_manufacturer_identifier = Tag::Simple.new(name: "SubRowManufacturerIdentifier")
			@sub_row_manufacturer_name = Tag::Simple.new(name: "SubRowManufacturerName")
			@sub_row_manufacturer_country_subdivision = Tag::Simple.new(name: "SubRowManufacturerCountrySubdivision")
			@sub_row_manufacturer_country_code = CountryCode.new(name: "SubRowManufacturerCountryCode")
			@sub_row_manufacturer_country_name = Tag::Simple.new(name: "SubRowManufacturerCountryName")
			@sub_row_manufacturer_order_identifier = Tag::Simple.new(name: "SubRowManufacturerOrderIdentifier")
			@sub_row_package_details = SubRowPackageDetails.new
		end
		
		def sub_tags
			[
				@sub_row_terminal_address_text,
				@sub_row_waybill_identifier,
				@sub_row_waybill_type_code,
				@sub_row_clearance_identifier,
				@sub_row_delivery_note_identifier,
				@sub_row_deliverer_name,
				@sub_row_deliverer_country_subdivision,
				@sub_row_deliverer_country_code,
				@sub_row_deliverer_country_name,
				@sub_row_place_of_discharge,
				@sub_row_final_destination_name,
				@sub_row_customs_info,
				@sub_row_manufacturer_article_identifier,
				@sub_row_manufacturer_identifier,
				@sub_row_manufacturer_name,
				@sub_row_manufacturer_country_subdivision,
				@sub_row_manufacturer_country_code,
				@sub_row_manufacturer_country_name,
				@sub_row_manufacturer_order_identifier,
				@sub_row_package_details
			]
		end
	end
end
