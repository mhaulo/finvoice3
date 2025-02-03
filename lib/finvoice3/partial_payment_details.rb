module Finvoice3
	class PartialPaymentDetails < Tag::Complex
		attr_accessor :paid_amount
		attr_accessor :paid_vat_excluded_amount
		attr_accessor :un_paid_amount
		attr_accessor :un_paid_vat_excluded_amount
		attr_accessor :interest_percent
		attr_accessor :processing_cost_amount
		attr_accessor :partial_payment_vat_included_amount
		attr_accessor :partial_payment_vat_excluded_amount
		attr_accessor :partial_payment_due_date
		attr_accessor :partial_payment_reference_identifier
		
		def initialize
			super
			@paid_amount = Tag::Simple.new(name: "PaidAmount")
			@paid_vat_excluded_amount = Tag::Simple.new(name: "PaidVatExcludedAmount")
			@un_paid_amount = Tag::Simple.new(name: "UnPaidAmount")
			@un_paid_vat_excluded_amount = Tag::Simple.new(name: "UnPaidVatExcludedAmount")
			@interest_percent = Tag::Simple.new(name: "InterestPercent")
			@processing_cost_amount = Tag::Simple.new(name: "ProcessingCostAmount")
			@partial_payment_vat_included_amount = Tag::Simple.new(name: "PartialPaymentVatIncludedAmount")
			@partial_payment_vat_excluded_amount = Tag::Simple.new(name: "PartialPaymentVatExcludedAmount")
			@partial_payment_due_date = Tag::Simple.new(name: "PartialPaymentDueDate")
			@partial_payment_reference_identifier = Tag::Simple.new(name: "PartialPaymentReferenceIdentifier")
		end
		
		def sub_tags
			[
				@paid_amount,
				@paid_vat_excluded_amount,
				@un_paid_amount,
				@un_paid_vat_excluded_amount,
				@interest_percent,
				@processing_cost_amount,
				@partial_payment_vat_included_amount,
				@partial_payment_vat_excluded_amount,
				@partial_payment_due_date,
				@partial_payment_reference_identifier
			]
		end
	end
end
