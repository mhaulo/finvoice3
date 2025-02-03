module Finvoice3
	class InvoiceDetails < Tag::Complex
		attr_accessor :invoice_type_code
		attr_accessor :invoice_type_code_un
		attr_accessor :invoice_type_text
		attr_accessor :invoice_classification
		attr_accessor :origin_code
		attr_accessor :origin_text
		attr_accessor :invoiced_object_id
		attr_accessor :invoice_number
		attr_accessor :invoice_date
		attr_accessor :original_invoice_number
		attr_accessor :original_invoice_date
		attr_accessor :original_invoice_reference
		attr_accessor :invoicing_period_start_date
		attr_accessor :invoicing_period_end_date
		attr_accessor :seller_reference_identifier
		attr_accessor :seller_reference_identifier_url_text
		attr_accessor :buyers_seller_identifier
		attr_accessor :sellers_buyer_identifier
		attr_accessor :order_identifier
		attr_accessor :order_identifier_url_text
		attr_accessor :order_date
		attr_accessor :order_name
		attr_accessor :sales_person_name
		attr_accessor :order_confirmation_identifier
		attr_accessor :order_confirmation_date
		attr_accessor :agreement_identifier
		attr_accessor :agreement_identifier_url_text
		attr_accessor :agreement_type_text
		attr_accessor :agreement_type_code
		attr_accessor :agreement_date
		attr_accessor :notification_identifer
		attr_accessor :notification_date
		attr_accessor :registration_number_identifier
		attr_accessor :controller_identifier
		attr_accessor :controller_name
		attr_accessor :control_date
		attr_accessor :buyer_reference_identifier
		attr_accessor :project_reference_identifier
		attr_accessor :definition_details
		attr_accessor :rows_total_vat_excluded_amount
		attr_accessor :discounts_total_vat_excluded_amount
		attr_accessor :charges_total_vat_excluded_amount
		attr_accessor :invoice_total_vat_excluded_amount
		attr_accessor :invoice_total_vat_amount
		attr_accessor :invoice_total_vat_accounting_amount
		attr_accessor :invoice_total_vat_included_amount
		attr_accessor :invoice_total_roundoff_amount
		attr_accessor :exchange_rate
		attr_accessor :other_currency_amount_vat_excluded_amount
		attr_accessor :other_currency_amount_vat_included_amount
		attr_accessor :credit_limit_amount
		attr_accessor :credit_interest_percent
		attr_accessor :operation_limit_amount
		attr_accessor :monthly_amount
		attr_accessor :short_proposed_account_identifier
		attr_accessor :normal_proposed_account_identifier
		attr_accessor :proposed_account_text
		attr_accessor :account_dimension_text
		attr_accessor :vat_point
		attr_accessor :vat_specification_details
		attr_accessor :invoice_free_text
		attr_accessor :invoice_vat_free_text
		attr_accessor :payment_terms_details
		attr_accessor :discount_details
		attr_accessor :charge_details
		attr_accessor :tender_reference
		
		def initialize
			super
			@invoice_type_code = InvoiceTypeCodeFi.new
			@invoice_type_code_un = Tag::Simple.new(name: "InvoiceTypeCodeUN")
			@invoice_type_text = Tag::Simple.new(name: "InvoiceTypeText")
			@invoice_classification = InvoiceClassification.new
			@origin_code = OriginCode.new
			@origin_text = Tag::Simple.new(name: "OriginText")
			@invoiced_object_id = InvoicedObjectId.new
			@invoice_number = Tag::Simple.new(name: "InvoiceNumber")
			@invoice_date = Tag::Simple.new(name: "InvoiceDate")
			@original_invoice_number = Tag::Simple.new(name: "OriginalInvoiceNumber")
			@original_invoice_date = Tag::Simple.new(name: "OriginalInvoiceDate")
			@original_invoice_reference = OriginalInvoiceReference.new
			@invoicing_period_start_date = Tag::Simple.new(name: "InvoicingPeriodStartDate")
			@invoicing_period_end_date = Tag::Simple.new(name: "InvoicingPeriodEndDate")
			@seller_reference_identifier = Tag::Simple.new(name: "SellerReferenceIdentifier")
			@seller_reference_identifier_url_text = Tag::Simple.new(name: "SellerReferenceIdentifierUrlText")
			@buyers_seller_identifier = PartyIdentifier.new(name: "BuyersSellerIdentifier")
			@sellers_buyer_identifier = PartyIdentifier.new(name: "SellersBuyerIdentifier")
			@order_identifier = Tag::Simple.new(name: "OrderIdentifier")
			@order_identifier_url_text = Tag::Simple.new(name: "OrderIdentifierUrlText")
			@order_date = Tag::Simple.new(name: "OrderDate")
			@orderer_name = Tag::Simple.new(name: "OrdererName")
			@sales_person_name = Tag::Simple.new(name: "SalesPersonName")
			@order_confirmation_identifier = Tag::Simple.new(name: "OrderConfirmationIdentifier")
			@order_confirmation_date = Tag::Simple.new(name: "OrderConfirmationDate")
			@agreement_identifier = Tag::Simple.new(name: "AgreementIdentifier")
			@agreement_identifier_url_text = Tag::Simple.new(name: "AgreementIdentifierUrlText")
			@agreement_type_text = Tag::Simple.new(name: "AgreementTypeText")
			@agreement_type_code = Tag::Simple.new(name: "AgreementTypeCode")
			@agreement_date = Tag::Simple.new(name: "AgreementDate")
			@notification_identifer = Tag::Simple.new(name: "NotificationIdentifier")
			@notification_date = Tag::Simple.new(name: "NotificationDate")
			@registration_number_identifier = Tag::Simple.new(name: "RegistrationNumberIdentifier")
			@controller_identifier = Tag::Simple.new(name: "ControllerIdentifier")
			@controller_name = Tag::Simple.new(name: "ControllerName")
			@control_date = Tag::Simple.new(name: "ControlDate")
			@buyer_reference_identifier = Tag::Simple.new(name: "BuyerReferenceIdentifier")
			@project_reference_identifier = Tag::Simple.new(name: "ProjectReferenceIdentifier")
			@definition_details = DefinitionDetails.new
			@rows_total_vat_excluded_amount = Tag::Simple.new(name: "RowsTotalVatExcludedAmount") # oma tagi
			@discounts_total_vat_excluded_amount = Tag::Simple.new(name: "DiscountsTotalVatExcludedAmount")
			@charges_total_vat_excluded_amount = Tag::Simple.new(name: "ChargesTotalVatExcludedAmount")
			@invoice_total_vat_excluded_amount = Tag::Simple.new(name: "InvoiceTotalVatExcludedAmount")
			@invoice_total_vat_amount = Tag::Simple.new(name: "InvoiceTotalVatAmount")
			@invoice_total_vat_accounting_amount = Tag::Simple.new(name: "InvoiceTotalVatAccountingAmount")
			@invoice_total_vat_included_amount = Tag::Simple.new(name: "InvoiceTotalVatIncludedAmount")
			@invoice_total_roundoff_amount =Tag::Simple.new(name: "InvoiceTotalRoundoffAmoutn")
			@exchange_rate = Tag::Simple.new(name: "ExchangeRate")
			@other_currency_amount_vat_excluded_amount = Tag::Simple.new(name: "OtherCurrencyAmountVatExcludedAmount")
			@other_currency_amount_vat_included_amount = Tag::Simple.new(name: "OtherCurrencyAmountVatIncludedAmoun")
			@credit_limit_amount = Tag::Simple.new(name: "CreditLimitAmount")
			@credit_interest_percent = Tag::Simple.new(name: "CreditInterestPercent")
			@operation_limit_amount = Tag::Simple.new(name: "OperationLimitAmount")
			@monthly_amount = Tag::Simple.new(name: "MonthlyAmount")
			@short_proposed_account_identifier = Tag::Simple.new(name: "ShortProposedAccountIdentifier")
			@normal_proposed_account_identifier = Tag::Simple.new(name: "NormalProposedAccountIdentifier")
			@proposed_account_text = Tag::Simple.new(name: "ProposedAccountText")
			@account_dimension_text = Tag::Simple.new(name: "AccountDimensionText")
			@vat_point = VatPoint.new
			@vat_specification_details = VatSpecificationDetails.new
			@invoice_free_text = Tag::Simple.new(name: "InvoiceFreeText")
			@invoice_vat_free_text = Tag::Simple.new(name: "InvoiceVatFreeText")
			@payment_terms_details = PaymentTermsDetails.new
			@discount_details = DiscountDetails.new
			@charge_details = InvoiceChargeDetails.new
			@tender_reference = Tag::Simple.new(name: "TenderReference")
		end
		
		def sub_tags
			[
				@invoice_type_code,
				@invoice_type_code_un,
				@invoice_type_text,
				@invoice_classification,
				@origin_code,
				@origin_text,
				@invoiced_object_id,
				@invoice_number,
				@invoice_date,
				@original_invoice_number,
				@original_invoice_date,
				@original_invoice_reference,
				@invoicing_period_start_date,
				@invoicing_period_end_date,
				@seller_reference_identifier,
				@seller_reference_identifier_url_text,
				@buyers_seller_identifier,
				@sellers_buyer_identifier,
				@order_identifier,
				@order_identifier_url_text,
				@order_date,
				@order_name,
				@sales_person_name,
				@order_confirmation_identifier,
				@order_confirmation_date,
				@agreement_identifier,
				@agreement_identifier_url_text,
				@agreement_type_text,
				@agreement_type_code,
				@agreement_date,
				@notification_identifer,
				@notification_date,
				@registration_number_identifier,
				@controller_identifier,
				@controller_name,
				@control_date,
				@buyer_reference_identifier,
				@project_reference_identifier,
				@definition_details,
				@rows_total_vat_excluded_amount,
				@discounts_total_vat_excluded_amount,
				@charges_total_vat_excluded_amount,
				@invoice_total_vat_excluded_amount,
				@invoice_total_vat_amount,
				@invoice_total_vat_accounting_amount,
				@invoice_total_vat_included_amount,
				@invoice_total_roundoff_amount,
				@exchange_rate,
				@other_currency_amount_vat_excluded_amount,
				@other_currency_amount_vat_included_amount,
				@credit_limit_amount,
				@credit_interest_percent,
				@operation_limit_amount,
				@monthly_amount,
				@short_proposed_account_identifier,
				@normal_proposed_account_identifier,
				@proposed_account_text,
				@account_dimension_text,
				@vat_point,
				@vat_specification_details,
				@invoice_free_text,
				@invoice_vat_free_text,
				@payment_terms_details,
				@discount_details,
				@charge_details,
				@tender_reference
			]
		end
	end
end
