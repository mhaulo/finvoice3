module Finvoice3
	class InvoiceDetails::PaymentTermsDetails::PaymentOverDueFineDetails < Tag::Complex
		attr_accessor :payment_over_due_fine_free_text
		attr_accessor :payment_over_due_fine_percent
		attr_accessor :payment_over_due_fixed_amount
		
		def initialize
			super
			@payment_over_due_fine_free_text = Tag::Simple.new(name: "PaymentOverDueFineFreeText")
			@payment_over_due_fine_percent = Tag::Simple.new(name: "PaymentOverDueFinePercent")
			@payment_over_due_fixed_amount = Tag::Simple.new(name: "PaymentOverDueFixedAmount")
		end
		
		def sub_tags
			[
				@payment_over_due_fine_free_text,
				@payment_over_due_fine_percent,
				@payment_over_due_fixed_amount
			]
		end
	end
end
