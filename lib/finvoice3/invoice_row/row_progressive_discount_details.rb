module Finvoice3
	class InvoiceRow::RowProgressiveDiscountDetails < Tag::Complex
		attr_accessor :row_discount_percent
		attr_accessor :row_discount_amount
		attr_accessor :row_discount_base_amount
		attr_accessor :row_discount_type_code
		attr_accessor :row_discount_type_text
		
		def initialize
			super
			@row_discount_percent = Tag::Simple.new(name: "RowDiscountPercent")
			@row_discount_amount = Tag::Simple.new(name: "RowDiscountAmount")
			@row_discount_base_amount = Tag::Simple.new(name: "RowDiscountBaseAmount")
			@row_discount_type_code = Tag::Simple.new(name: "RowDiscountTypeCode")
			@row_discount_type_text = Tag::Simple.new(name: "RowDiscountTypeText")
		end
		
		def sub_tags
			[
				@row_discount_percent,
				@row_discount_amount,
				@row_discount_base_amount,
				@row_discount_type_code,
				@row_discount_type_text
			]
		end
	end
end
