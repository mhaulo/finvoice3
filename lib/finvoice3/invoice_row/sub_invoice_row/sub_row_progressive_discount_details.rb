module Finvoice3
	class InvoiceRow::SubInvoiceRow::SubRowProgressiveDiscountDetails < Tag::Complex
		attr_accessor :sub_row_discount_percent
		attr_accessor :sub_row_discount_amount
		attr_accessor :sub_row_discount_base_amount
		attr_accessor :sub_row_discount_type_code
		attr_accessor :sub_row_discount_type_text
		
		def index
			super
			@sub_row_discount_percent = Tag::Simple.new(name: "SubRowDiscountPercent")
			@sub_row_discount_amount = Tag::Simple.new(name: "SubRowDiscountAmount")
			@sub_row_discount_base_amount = Tag::Simple.new(name: "SubRowDiscountBaseAmount")
			@sub_row_discount_type_code = Tag::Simple.new(name: "SubRowDiscountTypeCode")
			@sub_row_discount_type_text = Tag::Simple.new(name: "SubRowDiscountTypeText")
		end
		
		def sub_tags
			[
				@sub_row_discount_percent,
				@sub_row_discount_amount,
				@sub_row_discount_base_amount,
				@sub_row_discount_type_code,
				@sub_row_discount_type_text
			]
		end
	end
end
