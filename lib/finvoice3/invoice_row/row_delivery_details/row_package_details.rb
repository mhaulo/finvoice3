module Finvoice3
	class InvoiceRow::RowDeliveryDetails::RowPackageDetails < Tag::Complex
		attr_accessor :row_package_length
		attr_accessor :row_package_width
		attr_accessor :row_package_height
		attr_accessor :row_package_weight
		attr_accessor :row_package_net_weight
		attr_accessor :row_package_volume
		attr_accessor :row_transport_carriage_quantity
		
		def initialize
			super
			@row_package_length = Tag::Simple.new(name: "RowPackageLength")
			@row_package_width = Tag::Simple.new(name: "RowPackageWidth")
			@row_package_height = Tag::Simple.new(name: "RowPackageHeight")
			@row_package_weight = Tag::Simple.new(name: "RowPackageWeight")
			@row_package_net_weight = Tag::Simple.new(name: "RowPackageNetWeight")
			@row_package_volume = Tag::Simple.new(name: "RowPackageVolume")
			@row_transport_carriage_quantity = Tag::Simple.new(name: "RowTransportCarriageQuantity")
		end
		
		def sub_tags
			[
				@row_package_length,
				@row_package_width,
				@row_package_height,
				@row_package_weight,
				@row_package_net_weight,
				@row_package_volume,
				@row_transport_carriage_quantity
			]
		end
	end
end
