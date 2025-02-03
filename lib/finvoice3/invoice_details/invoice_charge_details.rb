module Finvoice3
	class InvoiceDetails::InvoiceChargeDetails < Tag::Complex
		attr_accessor :reason_text
		attr_accessor :reason_code
		attr_accessor :percent
		attr_accessor :amount
		attr_accessor :base_amount
		attr_accessor :vat_category_code
		attr_accessor :vat_rate_percent
		
		def initialize
			super
			@reason_text = Tag::Simple.new(name: "ReasonText")
			@reason_code = Tag::Simple.new(name: "ReasonCode")
			@percent = Tag::Simple.new(name: "Percent")
			@amount = Tag::Simple.new(name: "Amount")
			@vat_category_code = VatCategoryCode.new
			@vat_rate_percent = Tag::Simple.new(name: "VatRatePercent")
		end
		
		def sub_tags
			[
				@reason_text,
				@reason_code,
				@percent,
				@amount,
				@vat_category_code,
				@vat_rate_percent
			]
		end
	end
end
