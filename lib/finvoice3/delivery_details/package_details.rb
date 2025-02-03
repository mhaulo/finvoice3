module Finvoice3
	class DeliveryDetails::PackageDetails < Tag::Complex
		attr_accessor :package_length
		attr_accessor :package_width
		attr_accessor :package_height
		attr_accessor :package_weight
		attr_accessor :package_volume
		attr_accessor :transport_carriage_quantity
		
		def initialize
			super
			@package_length = Tag::Simple.new(name: "PackageLength")
			@package_width = Tag::Simple.new(name: "PackageWidth")
			@package_height = Tag::Simple.new(name: "PackageHeight")
			@package_weight = Tag::Simple.new(name: "PackageWeight")
			@package_volume = Tag::Simple.new(name: "PackageVolume")
			@transport_carriage_quantity = Tag::Simple.new(name: "TransportCarriageQuantity")
		end
		
		def sub_tags
			[
				@package_length,
				@package_width,
				@package_height,
				@package_weight,
				@package_volume,
				@transport_carriage_quantity
			]
		end
	end
end
