module Finvoice3
	class InvoiceDetails::PaymentTermsDetails < Tag::Complex
		attr_accessor :payment_terms_free_text
		attr_accessor :free_text
		attr_accessor :invoice_due_date
		attr_accessor :cash_discount_date
		attr_accessor :cash_discount_base_amount
		attr_accessor :cash_discount_percent
		attr_accessor :cash_discount_amount
		attr_accessor :cash_discount_excluding_vat_amount
		attr_accessor :cash_discount_vat_details
		attr_accessor :reduced_invoice_vat_included_amount
		attr_accessor :payment_over_due_fine_details
		
		def initialize
			super
			@payment_terms_free_text = Tag::Simple.new(name: "PaymentTermsFreeText")
			@free_text = HeaderValue.new
			@invoice_due_date = Tag::Simple.new(name: "InvoiceDueDate")
			@cash_discount_date = Tag::Simple.new(name: "CashDiscountDate")
			@cash_discount_base_amount = Tag::Simple.new(name: "CashDiscountBaseAmount")
			@cash_discount_percent = Tag::Simple.new(name: "CashDiscountPercent")
			@cash_discount_amount = Tag::Simple.new(name: "CashDiscountAmount")
			@cash_discount_excluding_vat_amount = Tag::Simple.new(name: "CashDiscountExcludingVatAmount")
			@cash_discount_vat_details = CashDiscountVatDetails.new
			@reduced_invoice_vat_included_amount = Tag::Simple.new(name: "ReducedInvoiceVatIncludedAmount")
			@payment_over_due_fine_details = PaymentOverDueFineDetails.new
		end
		
		def sub_tags
			[
				@payment_terms_free_text,
				@free_text,
				@invoice_due_date,
				@cash_discount_date,
				@cash_discount_base_amount,
				@cash_discount_percent,
				@cash_discount_amount,
				@cash_discount_excluding_vat_amount,
				@cash_discount_vat_details,
				@reduced_invoice_vat_included_amount,
				@payment_over_due_fine_details
			]
		end
	end
end
