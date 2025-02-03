module Finvoice3
	class InvoiceRow::SubInvoiceRow::SubRowDeliveryDetails::SubRowPackageDetails < Tag::Complex
		attr_accessor :sub_row_package_length
		attr_accessor :sub_row_package_width
		attr_accessor :sub_row_package_height
		attr_accessor :sub_row_package_weight
		attr_accessor :sub_row_package_net_weight
		attr_accessor :sub_row_package_volume
		attr_accessor :sub_row_transport_carriage_quantity
		
		def index
			super
			@sub_row_package_length = Tag::Simple.new(name: "SubRowPackageLength")
			@sub_row_package_width = Tag::Simple.new(name: "SubRowPackageWidth")
			@sub_row_package_height = Tag::Simple.new(name: "SubRowPackageHeight")
			@sub_row_package_weight = Tag::Simple.new(name: "SubRowPackageWeight")
			@sub_row_package_net_weight = Tag::Simple.new(name: "SubRowPackageNetWeight")
			@sub_row_package_volume = Tag::Simple.new(name: "SubRowPackageVolume")
			@sub_row_transport_carriage_quantity = Tag::Simple.new(name: "SubRowTransportCarriageQuantity")
		end
		
		def sub_tags
			[
				@sub_row_package_length,
				@sub_row_package_width,
				@sub_row_package_height,
				@sub_row_package_weight,
				@sub_row_package_net_weight,
				@sub_row_package_volume,
				@sub_row_transport_carriage_quantity
			]
		end
	end
end
