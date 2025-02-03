# frozen_string_literal: true

module Finvoice3
	class InvoiceRow < Tag::Complex
		attr_accessor :row_sub_identifier
		attr_accessor :invoiced_object_id
		attr_accessor :article_identifier
		attr_accessor :article_group_identifier
		attr_accessor :article_name
		attr_accessor :article_description
		attr_accessor :article_info_url_text
		attr_accessor :buyer_article_identifier
		attr_accessor :ean_code
		attr_accessor :row_registration_number_identifier
		attr_accessor :serial_number_identifier
		attr_accessor :row_action_code
		attr_accessor :row_definition_details
		attr_accessor :offered_quantity
		attr_accessor :delivered_quantity
		attr_accessor :confirmed_quantity
		attr_accessor :post_delivered_quantity
		attr_accessor :invoiced_quantity
		attr_accessor :credit_requested_quantity
		attr_accessor :returned_quantity
		attr_accessor :start_date
		attr_accessor :end_date
		attr_accessor :unit_price_amount
		attr_accessor :unit_price_discount_amount
		attr_accessor :unit_price_net_amount
		attr_accessor :unit_price_vat_included_amount
		attr_accessor :unit_price_base_quantity
		attr_accessor :row_identifier
		attr_accessor :row_identifier_url_text
		attr_accessor :row_order_position_identifier
		attr_accessor :row_identifier_date
		attr_accessor :row_position_identifier
		attr_accessor :original_invoice_number
		attr_accessor :original_invoice_date
		attr_accessor :original_invoice_reference
		attr_accessor :row_orderer_name
		attr_accessor :row_sales_person_name
		attr_accessor :row_order_confirmation_identifier
		attr_accessor :row_order_confirmation_date
		attr_accessor :row_delivery_identifier
		attr_accessor :row_delivery_identifier_url_text
		attr_accessor :row_delivery_date
		attr_accessor :row_quotation_identifier
		attr_accessor :row_quotation_identifier_url_text
		attr_accessor :row_agreement_identifier
		attr_accessor :row_agreement_identifier_url_text
		attr_accessor :row_request_of_quotation_identifier
		attr_accessor :row_request_of_quotation_identifier_url_text
		attr_accessor :row_price_list_identifier
		attr_accessor :row_price_list_identifier_url_text
		attr_accessor :row_buyer_reference_identifier
		attr_accessor :row_project_reference_identifier
		attr_accessor :row_over_due_payment_details
		attr_accessor :row_any_party_details
		attr_accessor :row_delivery_details
		attr_accessor :row_short_proposed_account_identifier
		attr_accessor :row_normal_proposed_account_identifier
		attr_accessor :row_proposed_account_text
		attr_accessor :row_account_dimension_text
		attr_accessor :row_seller_account_text
		attr_accessor :row_free_text
		attr_accessor :row_used_quantity
		attr_accessor :row_previous_meter_reading_date
		attr_accessor :row_latest_meter_reading_date
		attr_accessor :row_calculated_quantity
		attr_accessor :row_average_price_amount
		attr_accessor :row_discount_percent
		attr_accessor :row_discount_amount
		attr_accessor :row_discount_base_amount
		attr_accessor :row_discount_type_code
		attr_accessor :row_discount_type_text
		attr_accessor :row_progressive_discount_details
		attr_accessor :row_charge_details
		attr_accessor :row_vat_rate_percent
		attr_accessor :row_vat_code
		attr_accessor :row_vat_amount
		attr_accessor :row_vat_excluded_amount
		attr_accessor :row_amount
		attr_accessor :row_transaction_details
		attr_accessor :sub_invoice_row
		
		def initialize
			super
			@row_sub_identifier = Tag::Simple.new(name: "RowSubIdentifier")
			@invoiced_object_id = InvoicedObjectId.new
			@article_identifier = Tag::Simple.new(name: "ArticleIdentifier")
			@article_group_identifier = ArticleGroupIdentifier.new
			@article_name = Tag::Simple.new(name: "ArticleName")
			@article_description = Tag::Simple.new(name: "ArticleDescription")
			@article_info_url_text = Tag::Simple.new(name: "ArticleInfoUrlText")
			@buyer_article_identifier = Tag::Simple.new(name: "BuyerArticleIdentifier")
			@ean_code = EanCode.new
			@row_registration_number_identifier = Tag::Simple.new(name: "RowRegistrationNumberIdentifier")
			@serial_number_identifier = Tag::Simple.new(name: "SerialNumberIdentifier")
			@row_action_code = Tag::Simple.new(name: "RowActionCode")
			@row_definition_details = RowDefinitionDetails.new
			@offered_quantity = Tag::Simple.new(name: "OfferedQuantity")
			@delivered_quantity = Tag::Simple.new(name: "DeliveredQuantity")
			@ordered_quantity = Tag::Simple.new(name: "OrderedQuantity")
			@confirmed_quantity = Tag::Simple.new(name: "ConfirmedQuantity")
			@post_delivered_quantity = Tag::Simple.new(name: "PostDeliveredQuantity")
			@invoiced_quantity = Tag::Simple.new(name: "InvoicedQuantity")
			@credit_requested_quantity = Tag::Simple.new(name: "CreditRequestedQuantity")
			@returned_quantity = Tag::Simple.new(name: "ReturnedQuantity")
			@start_date = Tag::Simple.new(name: "StartDate")
			@end_date = Tag::Simple.new(name: "EndDate")
			@unit_price_amount = Tag::Simple.new(name: "UnitPriceAmount")
			@unit_price_discount_amount = Tag::Simple.new(name: "UnitPriceDiscountAmount")
			@unit_price_net_amount = Tag::Simple.new(name: "UnitPriceNetAmount")
			@unit_price_vat_included_amount = Tag::Simple.new(name: "UnitPriceVatIncludedAmount")
			@unit_price_base_quantity = Tag::Simple.new(name: "UnitPriceBaseQuantity")
			@row_identifier = Tag::Simple.new(name: "RowIdentifier")
			@row_identifier_url_text = Tag::Simple.new(name: "RowIdentifierUrlText")
			@row_order_position_identifier = Tag::Simple.new(name: "RowOrderPositionIdentifier")
			@row_identifier_date = Tag::Simple.new(name: "RowIdentifierDate")
			@row_position_identifier = Tag::Simple.new(name: "RowPositionIdentifier")
			@original_invoice_number = Tag::Simple.new(name: "OriginalInvoiceNumber")
			@original_invoice_date = Tag::Simple.new(name: "OriginalInvoiceDate")
			@original_invoice_reference = OriginalInvoiceReference.new
			@row_orderer_name = Tag::Simple.new(name: "RowOrdererName")
			@row_sales_person_name = Tag::Simple.new(name: "RowSalesPersonName")
			@row_order_confirmation_identifier = Tag::Simple.new(name: "RowOrderConfirmationIdentifier")
			@row_order_confirmation_date = Tag::Simple.new(name: "RowOrderConfirmationDate")
			@row_delivery_identifier = Tag::Simple.new(name: "RowDeliveryIdentifier")
			@row_delivery_identifier_url_text = Tag::Simple.new(name: "RowDeliveryIdentifier")
			@row_delivery_date = Tag::Simple.new(name: "RowDeliveryDate")
			@row_quotation_identifier = Tag::Simple.new(name: "RowQuotationIdentifier")
			@row_quotation_identifier_url_text = Tag::Simple.new(name: "RowQuotationIdentifierUrlText")
			@row_agreement_identifier = Tag::Simple.new(name: "RowAgreementIdentifier")
			@row_agreement_identifier_url_text = Tag::Simple.new(name: "RowAgreementIdentifierUrlText")
			@row_request_of_quotation_identifier = Tag::Simple.new(name: "RowRequestOfQuotationIdentifier")
			@row_request_of_quotation_identifier_url_text = Tag::Simple.new(name: "RowRequestOfQuotationIdentifierUrlText")
			@row_price_list_identifier = Tag::Simple.new(name: "RowPriceListIdentifier")
			@row_price_list_identifier_url_text = Tag::Simple.new(name: "RowPriceListIdentifierUrlText")
			@row_project_reference_identifier = Tag::Simple.new(name: "RowProjectReferenceIdentifier")
			@row_over_due_payment_details = RowOverDuePaymentDetails.new
			@row_any_party_details = RowAnyPartyDetails.new
			@row_delivery_details = RowDeliveryDetails.new
			@row_short_proposed_account_identifier = Tag::Simple.new(name: "RowShortProposedAccountIdentifier")
			@row_normal_proposed_account_identifier = Tag::Simple.new(name: "RowNormalProposedAccountIdentifier")
			@row_proposed_account_text = Tag::Simple.new(name: "RowProposedAccountText")
			@row_account_dimension_text = Tag::Simple.new(name: "RowAccountDimensionText")
			@row_seller_account_text = Tag::Simple.new(name: "RowSellerAccountText")
			@row_free_text = Tag::Simple.new(name: "RowFreeText")
			@row_used_quantity = Tag::Simple.new(name: "RowUsedQuantity")
			@row_previous_meter_reading_date = Tag::Simple.new(name: "RowPreviousMeterReadingDate")
			@row_latest_meter_reading_date = Tag::Simple.new(name: "RowLatestMeterReadingDate")
			@row_calculated_quantity = Tag::Simple.new(name: "RowCalculatedQuantity")
			@row_average_price_amount = Tag::Simple.new(name: "RowAveragePriceAmount")
			@row_discount_percent = Tag::Simple.new(name: "RowDiscountPercent")
			@row_discount_amount = Tag::Simple.new(name: "RowDiscountAmount")
			@row_discount_base_amount = Tag::Simple.new(name: "RowDiscountBaseAmount")
			@row_discount_type_code = Tag::Simple.new(name: "RowDiscountTypeCode")
			@row_discount_type_text = Tag::Simple.new(name: "RowDiscountTypeText")
			@row_progressive_discount_details = RowProgressiveDiscountDetails.new
			@row_charge_details = RowChargeDetails.new
			@row_vat_rate_percent = Tag::Simple.new(name: "RowVatRatePercent")
			@row_vat_code = Tag::Simple.new(name: "RowVatCode")
			@row_vat_amount = Tag::Simple.new(name: "RowVatAmount")
			@row_vat_excluded_amount = Tag::Simple.new(name: "RowVatExcludedAmount")
			@row_amount = Tag::Simple.new(name: "RowAmount")
			@row_transaction_details = TransactionDetails.new
			@sub_invoice_row = SubInvoiceRow.new
		end
		
		def sub_tags
			[
				@row_sub_identifier,
				@invoiced_object_id,
				@article_identifier,
				@article_group_identifier,
				@article_name,
				@article_description,
				@article_info_url_text,
				@buyer_article_identifier,
				@ean_code,
				@row_registration_number_identifier,
				@serial_number_identifier,
				@row_action_code,
				@row_definition_details,
				@offered_quantity,
				@delivered_quantity,
				@confirmed_quantity,
				@post_delivered_quantity,
				@invoiced_quantity,
				@credit_requested_quantity,
				@returned_quantity,
				@start_date,
				@end_date,
				@unit_price_amount,
				@unit_price_discount_amount,
				@unit_price_net_amount,
				@unit_price_vat_included_amount,
				@unit_price_base_quantity,
				@row_identifier,
				@row_identifier_url_text,
				@row_order_position_identifier,
				@row_identifier_date,
				@row_position_identifier,
				@original_invoice_number,
				@original_invoice_date,
				@original_invoice_reference,
				@row_orderer_name,
				@row_sales_person_name,
				@row_order_confirmation_identifier,
				@row_order_confirmation_date,
				@row_delivery_identifier,
				@row_delivery_identifier_url_text,
				@row_delivery_date,
				@row_quotation_identifier,
				@row_quotation_identifier_url_text,
				@row_agreement_identifier,
				@row_agreement_identifier_url_text,
				@row_request_of_quotation_identifier,
				@row_request_of_quotation_identifier_url_text,
				@row_price_list_identifier,
				@row_price_list_identifier_url_text,
				@row_buyer_reference_identifier,
				@row_project_reference_identifier,
				@row_over_due_payment_details,
				@row_any_party_details,
				@row_delivery_details,
				@row_short_proposed_account_identifier,
				@row_normal_proposed_account_identifier,
				@row_proposed_account_text,
				@row_account_dimension_text,
				@row_seller_account_text,
				@row_free_text,
				@row_used_quantity,
				@row_previous_meter_reading_date,
				@row_latest_meter_reading_date,
				@row_calculated_quantity,
				@row_average_price_amount,
				@row_discount_percent,
				@row_discount_amount,
				@row_discount_base_amount,
				@row_discount_type_code,
				@row_discount_type_text,
				@row_progressive_discount_details,
				@row_charge_details,
				@row_vat_rate_percent,
				@row_vat_code,
				@row_vat_amount,
				@row_vat_excluded_amount,
				@row_amount,
				@row_transaction_details,
				@sub_invoice_row
			]
		end
	end
end
