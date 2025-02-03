require_relative "finvoice3/version"

require_relative "finvoice3/tag"
require_relative "finvoice3/tag/simple"
require_relative "finvoice3/tag/complex"

require_relative "finvoice3/any_party_communication_details"
require_relative "finvoice3/buyer_communication_details"
require_relative "finvoice3/country_code"
require_relative "finvoice3/delivery_communication_details"
require_relative "finvoice3/direct_debit_info"
require_relative "finvoice3/electronic_addr_id"
require_relative "finvoice3/epi_account_id"
require_relative "finvoice3/invoice_recipient_communication_details"
require_relative "finvoice3/invoice_sender_party_details"
require_relative "finvoice3/invoiced_object_id"
require_relative "finvoice3/original_invoice_reference"
require_relative "finvoice3/partial_payment_details"
require_relative "finvoice3/party_identifier"
require_relative "finvoice3/party_legal_reg_id"
require_relative "finvoice3/payment_card_info"
require_relative "finvoice3/seller_communication_details"
require_relative "finvoice3/vat_category_code"

require_relative "finvoice3/any_party_details"
require_relative "finvoice3/any_party_details/any_party_communication_details"
require_relative "finvoice3/any_party_details/any_party_postal_address_details"

require_relative "finvoice3/attachment_message_details"
require_relative "finvoice3/attachment_message_details/attachment_message_identifier"

require_relative "finvoice3/delivery_party_details"
require_relative "finvoice3/delivery_party_details/delivery_postal_address_details"

require_relative "finvoice3/factoring_agreement_details"
require_relative "finvoice3/factoring_agreement_details/factoring_party_postal_address_details"

require_relative "finvoice3/invoice_recipient_party_details"
require_relative "finvoice3/invoice_recipient_party_details/invoice_recipient_postal_address_details"

require_relative "finvoice3/message_transmission_details"
require_relative "finvoice3/message_transmission_details/message_sender_details"
require_relative "finvoice3/message_transmission_details/message_receiver_details"
require_relative "finvoice3/message_transmission_details/message_details"

require_relative "finvoice3/seller_information_details"
require_relative "finvoice3/seller_information_details/invoice_recipient_details"
require_relative "finvoice3/seller_information_details/seller_account_details"
require_relative "finvoice3/seller_information_details/seller_account_details/seller_account_id"
require_relative "finvoice3/seller_information_details/seller_account_details/seller_bic"
require_relative "finvoice3/seller_information_details/seller_official_postal_address_details"

require_relative "finvoice3/seller_party_details"
require_relative "finvoice3/seller_party_details/seller_postal_address_details"

require_relative "finvoice3/buyer_party_details"
require_relative "finvoice3/buyer_party_details/buyer_postal_address_details"

require_relative "finvoice3/delivery_details"
require_relative "finvoice3/delivery_details/delivery_period_details"
require_relative "finvoice3/delivery_details/destination_name"
require_relative "finvoice3/delivery_details/package_details"
require_relative "finvoice3/delivery_details/shipment_party_details"
require_relative "finvoice3/delivery_details/shipment_party_details/shipment_postal_address_details"

require_relative "finvoice3/invoice_details"
require_relative "finvoice3/invoice_details/definition_details"
require_relative "finvoice3/invoice_details/definition_details/definition_header_text"
require_relative "finvoice3/invoice_details/discount_details"
require_relative "finvoice3/invoice_details/invoice_charge_details"
require_relative "finvoice3/invoice_details/invoice_classification"
require_relative "finvoice3/invoice_details/invoice_type_code_fi"
require_relative "finvoice3/invoice_details/origin_code"
require_relative "finvoice3/invoice_details/payment_terms_details"
require_relative "finvoice3/invoice_details/payment_terms_details/cash_discount_vat_details"
require_relative "finvoice3/invoice_details/payment_terms_details/header_value"
require_relative "finvoice3/invoice_details/payment_terms_details/payment_over_due_fine_details"
require_relative "finvoice3/invoice_details/vat_point"
require_relative "finvoice3/invoice_details/vat_specification_details"

require_relative "finvoice3/invoice_row"
require_relative "finvoice3/invoice_row/article_group_identifier"
require_relative "finvoice3/invoice_row/customs_info"
require_relative "finvoice3/invoice_row/ean_code"
require_relative "finvoice3/invoice_row/row_any_party_details"
require_relative "finvoice3/invoice_row/row_any_party_details/row_any_party_postal_address_details"
require_relative "finvoice3/invoice_row/row_charge_details"
require_relative "finvoice3/invoice_row/row_definition_details"
require_relative "finvoice3/invoice_row/row_definition_details/row_definition_header_text"
require_relative "finvoice3/invoice_row/row_delivery_details"
require_relative "finvoice3/invoice_row/row_delivery_details/row_package_details"
require_relative "finvoice3/invoice_row/row_over_due_payment_details"
require_relative "finvoice3/invoice_row/row_progressive_discount_details"
require_relative "finvoice3/invoice_row/sub_invoice_row"
require_relative "finvoice3/invoice_row/transaction_details"

require_relative "finvoice3/invoice_row/sub_invoice_row/sub_row_any_party_details"
require_relative "finvoice3/invoice_row/sub_invoice_row/sub_row_any_party_details/sub_row_any_party_postal_address_details"
require_relative "finvoice3/invoice_row/sub_invoice_row/sub_row_definition_details"
require_relative "finvoice3/invoice_row/sub_invoice_row/sub_row_definition_details/sub_row_definition_header_text"
require_relative "finvoice3/invoice_row/sub_invoice_row/sub_row_delivery_details"
require_relative "finvoice3/invoice_row/sub_invoice_row/sub_row_delivery_details/sub_row_package_details"
require_relative "finvoice3/invoice_row/sub_invoice_row/sub_row_over_due_payment_details"
require_relative "finvoice3/invoice_row/sub_invoice_row/sub_row_progressive_discount_details"

require_relative "finvoice3/epi_details"
require_relative "finvoice3/epi_details/epi_identification_details"
require_relative "finvoice3/epi_details/epi_identification_details/epi_reference"
require_relative "finvoice3/epi_details/epi_party_details"
require_relative "finvoice3/epi_details/epi_party_details/epi_beneficiary_party_details"
require_relative "finvoice3/epi_details/epi_party_details/epi_bfi_party_details"
require_relative "finvoice3/epi_details/epi_party_details/epi_bfi_party_details/epi_bfi_identifier"
require_relative "finvoice3/epi_details/epi_payment_instruction_details"
require_relative "finvoice3/epi_details/epi_payment_instruction_details/epi_charge"
require_relative "finvoice3/epi_details/epi_payment_instruction_details/epi_amount"
require_relative "finvoice3/epi_details/epi_payment_instruction_details/epi_remittance_info_identifier"

require_relative "finvoice3/payment_status_details"
require_relative "finvoice3/payment_status_details/payment_status_code"

require_relative "finvoice3/specification_details"
require_relative "finvoice3/specification_details/external_specification_details"

require_relative "finvoice3/finvoice"
require_relative "finvoice3/invoice"

require_relative "finvoice3/templates/fi_b2b"

require_relative "finvoice3/soap_envelope"


module Finvoice3
  XSD_SCHEMA  = "Finvoice3.0.xsd"
  FINVOICE_VERSION = "3.0"
end
