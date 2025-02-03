module Finvoice3
	class InvoiceRow::SubInvoiceRow < Tag::Complex
		attr_accessor :sub_identifier
		attr_accessor :sub_row_position_identifier
		attr_accessor :sub_invoiced_object_id
		attr_accessor :sub_article_identifier
		attr_accessor :sub_article_group_identifier
		attr_accessor :sub_article_name
		attr_accessor :sub_article_description
		attr_accessor :sub_article_info_url_text
		attr_accessor :sub_buyer_article_identifier
		attr_accessor :sub_ean_code
		attr_accessor :sub_row_registration_number_identifier
		attr_accessor :sub_serial_number_identifier
		attr_accessor :sub_row_action_code
		attr_accessor :sub_row_definition_details
		attr_accessor :sub_offered_quantity
		attr_accessor :sub_delivered_quantity
		attr_accessor :sub_ordered_quantity
		attr_accessor :sub_confirmed_quantity
		attr_accessor :sub_post_delivered_quantity
		attr_accessor :sub_invoiced_quantity
		attr_accessor :sub_credit_requested_quantity
		attr_accessor :sub_returned_quantity
		attr_accessor :sub_start_date
		attr_accessor :sub_end_date
		attr_accessor :sub_unit_price_amount
		attr_accessor :sub_unit_price_discount_amount
		attr_accessor :sub_unit_price_net_amount
		attr_accessor :sub_unit_price_vat_included_amount
		attr_accessor :sub_unit_price_base_quantity
		attr_accessor :sub_row_identifier
		attr_accessor :sub_row_identifier_url_text
		attr_accessor :sub_row_identifier_date
		attr_accessor :sub_row_orderer_name
		attr_accessor :sub_row_sales_person_name
		attr_accessor :sub_row_order_confirmation_identifier
		attr_accessor :sub_row_order_confirmation_date
		attr_accessor :sub_original_invoice_number
		attr_accessor :sub_original_invoice_date
		attr_accessor :sub_original_invoice_reference
		attr_accessor :sub_row_delivery_identifier
		attr_accessor :sub_row_delivery_identifier_url_text
		attr_accessor :sub_row_delivery_date
		attr_accessor :sub_row_quotation_identifier
		attr_accessor :sub_row_quotation_identifier_url_text
		attr_accessor :sub_row_agreement_identifier
		attr_accessor :sub_row_agreement_identifier_url_text
		attr_accessor :sub_row_request_of_quotation_identifier
		attr_accessor :sub_row_request_of_quotation_identifier_url_text
		attr_accessor :sub_row_price_list_identifier
		attr_accessor :sub_row_price_list_identifier_url_text
		attr_accessor :sub_row_buyer_reference_identifier
		attr_accessor :sub_row_project_reference_identifier
		attr_accessor :sub_row_over_due_payment_details
		attr_accessor :sub_row_any_party_details
		attr_accessor :sub_row_delivery_details
		attr_accessor :sub_row_short_proposed_account_identifier
		attr_accessor :sub_row_normal_proposed_account_identifier
		attr_accessor :sub_row_proposed_account_text
		attr_accessor :sub_row_account_dimension_text
		attr_accessor :sub_row_seller_account_text
		attr_accessor :sub_row_free_text
		attr_accessor :sub_row_used_quantity
		attr_accessor :sub_row_previous_meter_reading_date
		attr_accessor :sub_row_latest_meter_reading_date
		attr_accessor :sub_row_calculated_quantity
		attr_accessor :sub_row_average_price_amount
		attr_accessor :sub_row_discount_percent
		attr_accessor :sub_row_discount_amount
		attr_accessor :sub_row_discount_base_amount
		attr_accessor :sub_row_discount_type_code
		attr_accessor :sub_row_discount_type_text
		attr_accessor :sub_row_progessive_discount_details
		attr_accessor :sub_row_charge_details
		attr_accessor :sub_row_vat_rate_percent
		attr_accessor :sub_row_vat_code
		attr_accessor :sub_row_vat_amount
		attr_accessor :sub_row_vat_excluded_amount
		attr_accessor :sub_row_amount
		attr_accessor :sub_row_transaction_details
		
		def initialize
			super
			@sub_identifier = Tag::Simple.new(name: "SubIdentifier")
			@sub_row_position_identifier = Tag::Simple.new(name: "SubRowPositionIdentifier")
			@sub_invoiced_object_id = InvoicedObjectId.new(name: "SubInvoicedObjectID")
			@sub_article_identifier = Tag::Simple.new(name: "SubArticleIdentifier")
			@sub_article_group_identifier = Finvoice3::InvoiceRow::ArticleGroupIdentifier.new(name: "SubArticleGroupIdentifier")
			@sub_article_name = Tag::Simple.new(name: "SubArticleName")
			@sub_article_description = Tag::Simple.new(name: "SubArticleDescription")
			@sub_article_info_url_text = Tag::Simple.new(name: "SubArticleInfoUrlText")
			@sub_buyer_article_identifier = Tag::Simple.new(name: "SubBuyerArticleIdentifier")
			@sub_ean_code = Finvoice3::InvoiceRow::EanCode.new(name: "SubEanCode")
			@sub_row_registration_number_identifier = Tag::Simple.new(name: "SubRowRegistrationNumberIdentifier")
			@sub_serial_number_identifier = Tag::Simple.new(name: "SubSerialNumberIdentifier")
			@sub_row_action_code = Tag::Simple.new(name: "SubRowActionCode")
			@sub_row_definition_details = SubRowDefinitionDetails.new
			@sub_offered_quantity = Tag::Simple.new(name: "SubOfferedQuantity")
			@sub_delivered_quantity = Tag::Simple.new(name: "SubDeliveredQuantity")
			@sub_ordered_quantity = Tag::Simple.new(name: "SubOrderedQuantity")
			@sub_confirmed_quantity = Tag::Simple.new(name: "SubConfirmedQuantity")
			@sub_post_delivered_quantity = Tag::Simple.new(name: "SubPostDeliveredQuantity")
			@sub_invoiced_quantity = Tag::Simple.new(name: "SubInvoicedQuantity")
			@sub_credit_requested_quantity = Tag::Simple.new(name: "SubCreditRequestedQuantity")
			@sub_returned_quantity = Tag::Simple.new(name: "SubReturnedQuantity")
			@sub_start_date = Tag::Simple.new(name: "SubStartDate")
			@sub_end_date = Tag::Simple.new(name: "SubEndDate")
			@sub_unit_price_amount = Tag::Simple.new(name: "SubUnitPriceAmount")
			@sub_unit_price_discount_amount = Tag::Simple.new(name: "SubUnitProceDiscountAmount")
			@sub_unit_price_net_amount = Tag::Simple.new(name: "SubUnitPriceNetAmount")
			@sub_unit_price_vat_included_amount = Tag::Simple.new(name: "SubUnitPriceVatIncludedAmount")
			@sub_unit_price_base_quantity = Tag::Simple.new(name: "SubUnitPriceBaseQuantity")
			@sub_row_identifier = Tag::Simple.new(name: "SubRowIdentifier")
			@sub_row_identifier_url_text = Tag::Simple.new(name: "SubRowIdentifierUrlText")
			@sub_row_identifier_date = Tag::Simple.new(name: "SubRowIdentifierDate")
			@sub_row_orderer_name = Tag::Simple.new(name: "SubRowOrdererName")
			@sub_row_sales_person_name = Tag::Simple.new(name: "SubRowSalesPersonName")
			@sub_row_order_confirmation_identifier = Tag::Simple.new(name: "SubRowOrderConfirmationIdentifier")
			@sub_row_order_confirmation_date = Tag::Simple.new(name: "SubRowOrderConfirmationDate")
			@sub_original_invoice_number = Tag::Simple.new(name: "SubOriginalInvoiceNumber")
			@sub_original_invoice_date = Tag::Simple.new(name: "SubOriginalInvoiceDate")
			@sub_original_invoice_reference = OriginalInvoiceReference.new(name: "SubOriginalInvoiceReference")
			@sub_row_delivery_identifier = Tag::Simple.new(name: "SubRowDeliveryIdentifer")
			@sub_row_delivery_identifier_url_text = Tag::Simple.new(name: "SubRowDeliveryIdentifierUrlText")
			@sub_row_delivery_date = Tag::Simple.new(name: "SubRowDeliveryDate")
			@sub_row_quotation_identifier = Tag::Simple.new(name: "SubRowQuotationIdentifier")
			@sub_row_quotation_identifier_url_text = Tag::Simple.new(name: "SubRowQuotationIdentifierUrlText")
			@sub_row_agreement_identifier = Tag::Simple.new(name: "SubRowAgreementIdentifier")
			@sub_row_agreement_identifier_url_text = Tag::Simple.new(name: "SubRowAgreementIdentifierUrlText")
			@sub_row_request_of_quotation_identifier = Tag::Simple.new(name: "SubRowRequestOfQuotationIdentifier")
			@sub_row_request_of_quotation_identifier_url_text = Tag::Simple.new(name: "SubRowRequestOfQuotationIdentifierUrlText")
			@sub_row_price_list_identifier = Tag::Simple.new(name: "SubRowPriceListIdentifier")
			@sub_row_price_list_identifier_url_text = Tag::Simple.new(name: "SubRowPriceListIdentifierUrlText")
			@sub_row_buyer_reference_identifier = Tag::Simple.new(name: "SubRowBuyerReferenceIdentifer")
			@sub_row_project_reference_identifier = Tag::Simple.new(name: "SubRowProjectReferenceIdentifier")
			@sub_row_over_due_payment_details = SubRowOverDuePaymentDetails.new
			@sub_row_any_party_details = SubRowAnyPartyDetails.new
			@sub_row_delivery_details = SubRowDeliveryDetails.new
			@sub_row_short_proposed_account_identifier = Tag::Simple.new(name: "SubRowShortProposedAccountIdentifier")
			@sub_row_normal_proposed_account_identifier = Tag::Simple.new(name: "SubRowNormalProposedAccountIdentifier")
			@sub_row_proposed_account_text = Tag::Simple.new(name: "SubRowProposedAccountText")
			@sub_row_account_dimension_text = Tag::Simple.new(name: "SubRowAccountDimensionText")
			@sub_row_seller_account_text = Tag::Simple.new(name: "SubRowSellerAccountText")
			@sub_row_free_text = Tag::Simple.new(name: "SubRowFreeText")
			@sub_row_used_quantity = Tag::Simple.new(name: "SubRowUsedQuantity")
			@sub_row_previous_meter_reading_date = Tag::Simple.new(name: "SubRowPreviousMeterReadingDate")
			@sub_row_latest_meter_reading_date = Tag::Simple.new(name: "SubRowLatestMeterReadingText")
			@sub_row_calculated_quantity = Tag::Simple.new(name: "SubRowCalculatedQuantity")
			@sub_row_average_price_amount = Tag::Simple.new(name: "SubRowAveragePriceAmount")
			@sub_row_discount_percent = Tag::Simple.new(name: "SubRowDiscountPercent")
			@sub_row_discount_amount = Tag::Simple.new(name: "SubRowDiscountAmount")
			@sub_row_discount_base_amount = Tag::Simple.new(name: "SubRowDiscountBaseAmount")
			@sub_row_discount_type_code = Tag::Simple.new(name: "SubRowDiscountTypeCode")
			@sub_row_discount_type_text = Tag::Simple.new(name: "SubRowDiscountTypeText")
			@sub_row_progessive_discount_details = SubRowProgressiveDiscountDetails.new
			@sub_row_charge_details = Finvoice3::InvoiceRow::RowChargeDetails.new(name: "SubRowChargeDetails")
			@sub_row_vat_rate_percent = Tag::Simple.new(name: "SubRowVatRatePercent")
			@sub_row_vat_code = Tag::Simple.new(name: "SubRowVatCode")
			@sub_row_vat_amount = Tag::Simple.new(name: "SubRowVatAmount")
			@sub_row_vat_excluded_amount = Tag::Simple.new(name: "SubRowVatExcludedAmount")
			@sub_row_amount = Tag::Simple.new(name: "SubRowAmount")
			@sub_row_transaction_details = Finvoice3::InvoiceRow::TransactionDetails.new(name: "SubRowTransactionDetails")
		end
		
		def sub_tags
			[
				@sub_identifier,
				@sub_row_position_identifier,
				@sub_invoiced_object_id,
				@sub_article_identifier,
				@sub_article_group_identifier,
				@sub_article_name,
				@sub_article_description,
				@sub_article_info_url_text,
				@sub_buyer_article_identifier,
				@sub_ean_code,
				@sub_row_registration_number_identifier,
				@sub_serial_number_identifier,
				@sub_row_action_code,
				@sub_row_definition_details,
				@sub_offered_quantity,
				@sub_delivered_quantity,
				@sub_ordered_quantity,
				@sub_confirmed_quantity,
				@sub_post_delivered_quantity,
				@sub_invoiced_quantity,
				@sub_credit_requested_quantity,
				@sub_returned_quantity,
				@sub_start_date,
				@sub_end_date,
				@sub_unit_price_amount,
				@sub_unit_price_discount_amount,
				@sub_unit_price_net_amount,
				@sub_unit_price_vat_included_amount,
				@sub_unit_price_base_quantity,
				@sub_row_identifier,
				@sub_row_identifier_url_text,
				@sub_row_identifier_date,
				@sub_row_orderer_name,
				@sub_row_sales_person_name,
				@sub_row_order_confirmation_identifier,
				@sub_row_order_confirmation_date,
				@sub_original_invoice_number,
				@sub_original_invoice_date,
				@sub_original_invoice_reference,
				@sub_row_delivery_identifier,
				@sub_row_delivery_identifier_url_text,
				@sub_row_delivery_date,
				@sub_row_quotation_identifier,
				@sub_row_quotation_identifier_url_text,
				@sub_row_agreement_identifier,
				@sub_row_agreement_identifier_url_text,
				@sub_row_request_of_quotation_identifier,
				@sub_row_request_of_quotation_identifier_url_text,
				@sub_row_price_list_identifier,
				@sub_row_price_list_identifier_url_text,
				@sub_row_buyer_reference_identifier,
				@sub_row_project_reference_identifier,
				@sub_row_over_due_payment_details,
				@sub_row_any_party_details,
				@sub_row_delivery_details,
				@sub_row_short_proposed_account_identifier,
				@sub_row_normal_proposed_account_identifier,
				@sub_row_proposed_account_text,
				@sub_row_account_dimension_text,
				@sub_row_seller_account_text,
				@sub_row_free_text,
				@sub_row_used_quantity,
				@sub_row_previous_meter_reading_date,
				@sub_row_latest_meter_reading_date,
				@sub_row_calculated_quantity,
				@sub_row_average_price_amount,
				@sub_row_discount_percent,
				@sub_row_discount_amount,
				@sub_row_discount_base_amount,
				@sub_row_discount_type_code,
				@sub_row_discount_type_text,
				@sub_row_progessive_discount_details,
				@sub_row_charge_details,
				@sub_row_vat_rate_percent,
				@sub_row_vat_code,
				@sub_row_vat_amount,
				@sub_row_vat_excluded_amount,
				@sub_row_amount,
				@sub_row_transaction_details
			]
		end
	end
end
