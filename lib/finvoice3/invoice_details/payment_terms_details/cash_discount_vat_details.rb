module Finvoice3
	class InvoiceDetails::PaymentTermsDetails::CashDiscountVatDetails < Tag::Complex
		attr_accessor :cash_discount_vat_percent
		attr_accessor :cash_discount_vat_amount
		
		def initialize
			super
			@cash_discount_vat_percent = Tag::Simple.new(name: "CashDiscountVatPercent")
			@cash_discount_vat_amount = Tag::Simple.new(name: "CashDiscountVatAmount")
		end
		
		def sub_tags
			[
				@cash_discount_vat_percent,
				@cash_discount_vat_amount
			]
		end
	end
end
