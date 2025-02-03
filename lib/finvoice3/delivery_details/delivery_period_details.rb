module Finvoice3
	class DeliveryDetails::DeliveryPeriodDetails < Tag::Complex
		attr_accessor :start_date
		attr_accessor :end_date
		
		def initialize
			super
			@start_date = Tag::Simple.new(name: "StartDate")
			@end_date = Tag::Simple.new(name: "EndDate")
		end
		
		def sub_tags
			[
				@start_date,
				@end_date
			]
		end
	end
end
