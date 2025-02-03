module Finvoice3
	class InvoiceRow::SubInvoiceRow::SubRowOverDuePaymentDetails < Tag::Complex
		attr_accessor :sub_row_original_invoice_identifier
		attr_accessor :sub_row_original_invoice_date
		attr_accessor :sub_row_original_due_date
		attr_accessor :sub_row_original_invoice_total_amount
		attr_accessor :sub_row_original_epi_remittance_info_identifier
		attr_accessor :sub_row_paid_vat_excluded_amount
		attr_accessor :sub_row_paid_vat_incldued_amount
		attr_accessor :sub_row_paid_date
		attr_accessor :sub_row_un_paid_vat_excluded_amount
		attr_accessor :sub_row_un_paid_vat_included_amount
		attr_accessor :sub_row_collection_date
		attr_accessor :sub_row_collection_quantity
		attr_accessor :sub_row_collection_charge_amount
		attr_accessor :sub_row_interest_rate
		attr_accessor :sub_row_interest_start_date
		attr_accessor :sub_row_interest_end_date
		attr_accessor :sub_row_interest_period_text
		attr_accessor :sub_row_interest_date_number
		attr_accessor :sub_row_interest_charge_amount
		attr_accessor :sub_row_interest_charge_vat_amount
		
		def index
			super
			@sub_row_original_invoice_identifier = Tag::Simple.new(name: "SubRowOriginalInvoiceIdentifier")
			@sub_row_original_invoice_date = Tag::Simple.new(name: "SubRowOriginalInvoiceDate")
			@sub_row_original_due_date = Tag::Simple.new(name: "SubRowOriginalDueDate")
			@sub_row_original_invoice_total_amount = Tag::Simple.new(name: "SubRowOriginalInvoiceTotalAmount")
			@sub_row_original_epi_remittance_info_identifier = Tag::Simple.new(name: "SubRowOriginalEpiRemittanceInfoIdentifier")
			@sub_row_paid_vat_excluded_amount = Tag::Simple.new(name: "SubRowPaidVatExcludedAmount")
			@sub_row_paid_vat_incldued_amount = Tag::Simple.new(name: "SubRowPaidVatIncludedAmount")
			@sub_row_paid_date = Tag::Simple.new(name: "SubRowPaidDate")
			@sub_row_un_paid_vat_excluded_amount = Tag::Simple.new(name: "SubRowUnPaidVatExcludedAmount")
			@sub_row_un_paid_vat_included_amount = Tag::Simple.new(name: "SubRowUnPaidVatIncludedAmount")
			@sub_row_collection_date = Tag::Simple.new(name: "SubRowCollectionDate")
			@sub_row_collection_quantity = Tag::Simple.new(name: "SubRowCollectionQuantity")
			@sub_row_collection_charge_amount = Tag::Simple.new(name: "SubRowCollectionChargeAmount")
			@sub_row_interest_rate = Tag::Simple.new(name: "SubRowInterestRate")
			@sub_row_interest_start_date = Tag::Simple.new(name: "SubRowInterestStartDate")
			@sub_row_interest_end_date = Tag::Simple.new(name: "SubRowInterestEndDate")
			@sub_row_interest_period_text = Tag::Simple.new(name: "SubRowInterestPeriodText")
			@sub_row_interest_date_number = Tag::Simple.new(name: "SubRowInterestDateNumber")
			@sub_row_interest_charge_amount = Tag::Simple.new(name: "SubRowInterestChargeAmount")
			@sub_row_interest_charge_vat_amount = Tag::Simple.new(name: "SubRowInterestChargeVatAmount")
		end
		
		def sub_tags
			[
				@sub_row_original_invoice_identifier,
				@sub_row_original_invoice_date,
				@sub_row_original_due_date,
				@sub_row_original_invoice_total_amount,
				@sub_row_original_epi_remittance_info_identifier,
				@sub_row_paid_vat_excluded_amount,
				@sub_row_paid_vat_incldued_amount,
				@sub_row_paid_date,
				@sub_row_un_paid_vat_excluded_amount,
				@sub_row_un_paid_vat_included_amount,
				@sub_row_collection_date,
				@sub_row_collection_quantity,
				@sub_row_collection_charge_amount,
				@sub_row_interest_rate,
				@sub_row_interest_start_date,
				@sub_row_interest_end_date,
				@sub_row_interest_period_text,
				@sub_row_interest_date_number,
				@sub_row_interest_charge_amount,
				@sub_row_interest_charge_vat_amount
			]
		end
	end
end
