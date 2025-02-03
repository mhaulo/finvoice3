module Finvoice3
	class InvoiceDetails::VatPoint < Tag::Complex
		attr_accessor :vat_point_date
		attr_accessor :vat_point_date_code
		
		def initialize
			super
			@vat_point_date = Tag::Simple.new(name: "VatPointDate")
			@vat_point_date_code = Tag::Simple.new(name: "VatPointDateCode")
		end
		
		def sub_tags
			[
				@vat_point_date,
				@vat_point_date_code
			]
		end
	end
end
