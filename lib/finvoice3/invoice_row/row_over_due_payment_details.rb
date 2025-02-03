module Finvoice3
	class InvoiceRow::RowOverDuePaymentDetails < Tag::Complex
		attr_accessor :row_original_invoice_identifier
		attr_accessor :row_original_invoice_date
		attr_accessor :row_original_due_date
		attr_accessor :row_original_invoice_total_amount
		attr_accessor :row_original_epi_remittance_info_identifier
		attr_accessor :row_paid_vat_excluded_amount
		attr_accessor :row_paid_vat_included_amount
		attr_accessor :row_paid_date
		attr_accessor :row_un_paid_vat_excluded_amount
		attr_accessor :row_un_paid_vat_included_amount
		attr_accessor :row_collection_date
		attr_accessor :row_collection_quantity
		attr_accessor :row_collection_charge_amount
		attr_accessor :row_interest_rate
		attr_accessor :row_interest_start_date
		attr_accessor :row_interest_end_date
		attr_accessor :row_interest_period_text
		attr_accessor :row_interest_date_number
		attr_accessor :row_interest_charge_amount
		attr_accessor :row_interest_charge_vat_amount
	end
	
	def initialize
		super
		@row_original_invoice_identifier = Tag::Simple.new(name: "RowOriginalInvoiceIdentifier")
		@row_original_invoice_date = Tag::Simple.new(name: "RowOriginalInvoiceDate")
		@row_original_due_date = Tag::Simple.new(name: "RowOriginalDueDate")
		@row_original_invoice_total_amount = Tag::Simple.new(name: "RowOriginalInvoiceTotalAmount")
		@row_original_epi_remittance_info_identifier = Tag::Simple.new(name: "RowOriginalEpiRemittanceInfoIdentifier")
		@row_paid_vat_excluded_amount = Tag::Simple.new(name: "RowPaidVatExcludedAmount")
		@row_paid_vat_included_amount = Tag::Simple.new(name: "RowPaidVatIncludedAmount")
		@row_paid_date = Tag::Simple.new(name: "RowPaidDate")
		@row_un_paid_vat_excluded_amount = Tag::Simple.new(name: "RowUnPaidVatExcludedAmount")
		@row_un_paid_vat_included_amount = Tag::Simple.new(name: "RowUnPaidVatIncludedAmount")
		@row_collection_date = Tag::Simple.new(name: "RowCollectionDate")
		@row_collection_quantity = Tag::Simple.new(name: "RowCollectionuQuantity")
		@row_collection_charge_amount = Tag::Simple.new(name: "RowCollectionChargeAmount")
		@row_interest_rate = Tag::Simple.new(name: "RowInterestRate")
		@row_interest_start_date = Tag::Simple.new(name: "RowInterestStartDate")
		@row_interest_end_date = Tag::Simple.new(name: "RowInterestEndDate")
		@row_interest_period_text = Tag::Simple.new(name: "RowInterestPeriodText")
		@row_interest_date_number = Tag::Simple.new(name: "RowInterestDateNumber")
		@row_interest_charge_amount = Tag::Simple.new(name: "RowInterestChargeAmount")
		@row_interest_charge_vat_amount = Tag::Simple.new(name: "RowInterestChargeVatAmount")
	end
	
	def sub_tags
		[
			@row_original_invoice_identifier,
			@row_original_invoice_date,
			@row_original_due_date,
			@row_original_invoice_total_amount,
			@row_original_epi_remittance_info_identifier,
			@row_paid_vat_excluded_amount,
			@row_paid_vat_included_amount,
			@row_paid_date,
			@row_un_paid_vat_excluded_amount,
			@row_un_paid_vat_included_amount,
			@row_collection_date,
			@row_collection_quantity,
			@row_collection_charge_amount,
			@row_interest_rate,
			@row_interest_start_date,
			@row_interest_end_date,
			@row_interest_period_text,
			@row_interest_date_number,
			@row_interest_charge_amount,
			@row_interest_charge_vat_amount
		]
	end
end
