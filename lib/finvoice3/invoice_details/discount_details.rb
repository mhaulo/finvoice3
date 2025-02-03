module Finvoice3
	class InvoiceDetails::DiscountDetails < Tag::Complex
		attr_accessor :free_text
		attr_accessor :reason_code
		attr_accessor :percent
		attr_accessor :amount
		attr_accessor :base_amount
		attr_accessor :vat_category_code
		attr_accessor :vat_rate_percent
		
		def initialize
			super
			@free_text = Tag::Simple.new(name: "FreeText")
			@reason_code = Tag::Simple.new(name: "ReasonCode")
			@percent = Tag::Simple.new(name: "Percent")
			@amount = Tag::Simple.new(name: "Amount")
			@base_amount = Tag::Simple.new(name: "BaseAmount")
			@vat_category_code = Finvoice3::VatCategoryCode.new
			@vat_rate_percent = Tag::Simple.new(name: "VatRatePercent")
		end
		
		def sub_tags
			[
				@free_text,
				@reason_code,
				@percent,
				@amount,
				@base_amount,
				@vat_category_code,
				@vat_rate_percent
			]
		end
	end
end
