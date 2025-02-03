require "nokogiri"
require File.expand_path("../test_helper", __FILE__)

class Finvoice3Test < Minitest::Test
  def setup
    @xsd = Nokogiri::XML::Schema(File.read(xsd_path))
    @invoice = Finvoice3::Invoice.new
    @finvoice = @invoice.finvoice
  end
  
  def errors
    @invoice.validate
  end

  def test_initializing
    assert_equal Finvoice3::Invoice, @invoice.class
  end

  def test_blank_xml
    refute_empty errors
  end
  
  def test_basic_b2b_invoice
    @finvoice.message_transmission_details.message_sender_details.from_identifier.value = "00371234567890"
    @finvoice.message_transmission_details.message_sender_details.from_identifier.scheme_id = "0037"
    @finvoice.message_transmission_details.message_sender_details.from_intermediator.value = "NDEAFIHH"

    @finvoice.message_transmission_details.message_receiver_details.to_identifier.value = "00370987654321"
    @finvoice.message_transmission_details.message_receiver_details.to_identifier.scheme_id = "0037"
    @finvoice.message_transmission_details.message_receiver_details.to_intermediator.value = "NDEAFIHH"

    @finvoice.message_transmission_details.message_details.message_identifier.value = "12345"
    @finvoice.message_transmission_details.message_details.message_time_stamp.value = "2016-02-08T11:52:00"
    @finvoice.message_transmission_details.message_details.specification_identifier.value = "EN16931"

    @finvoice.seller_party_details.seller_party_identifier.value = "6666666-5"
    @finvoice.seller_party_details.add_seller_organisation_name "Pullin Musiikki oy"
    @finvoice.seller_party_details.add_seller_organisation_name "Pullis Musik Ab"
    @finvoice.seller_party_details.seller_organisation_tax_code.value = "FI66666665"
    @finvoice.seller_party_details.seller_postal_address_details.seller_street_name.value = "Antinkatu 3C"
    @finvoice.seller_party_details.seller_postal_address_details.seller_town_name.value = "Helsinki"
    @finvoice.seller_party_details.seller_postal_address_details.seller_post_code_identifier.value = "00100"
    @finvoice.seller_party_details.seller_postal_address_details.country_code.value = "FI"
    @finvoice.seller_party_details.seller_postal_address_details.country_name.value = "Suomi"
    @finvoice.seller_information_details.add_seller_account(
        account_id_scheme: "IBAN",
        account_id: "FI2757800750155447",
        bic_scheme: "BIC",
        bic: "OKOYFIHH"
    )
    @finvoice.seller_information_details.add_seller_account(
        account_id_scheme: "IBAN",
        account_id: "FI7429501800000014",
        bic_scheme: "BIC",
        bic: "NDEAFIHH"
    )

    @finvoice.buyer_party_details.buyer_party_identifier.value = "1234567-1"
    @finvoice.buyer_party_details.add_buyer_organisation_name "Sensorit Oy"
    @finvoice.buyer_party_details.buyer_organisation_tax_code.value = "FI12345671"
    @finvoice.buyer_party_details.buyer_postal_address_details.buyer_street_name.value = "Mannerheimintie 1"
    @finvoice.buyer_party_details.buyer_postal_address_details.buyer_town_name.value = "Helsinki"
    @finvoice.buyer_party_details.buyer_postal_address_details.buyer_post_code_identifier.value = "00100"
    @finvoice.buyer_party_details.buyer_postal_address_details.country_code.value = "FI"
    @finvoice.buyer_party_details.buyer_postal_address_details.country_name.value = "Suomi"

    @finvoice.delivery_details.delivery_date.set_attribute("Format", "CCYYMMDD")
    @finvoice.delivery_details.delivery_date.value = "20160201"

    @finvoice.invoice_details.invoice_type_code.value = "INV01"
    @finvoice.invoice_details.invoice_type_code_un.value = "380"
    @finvoice.invoice_details.invoice_type_text.value = "Invoice"
    @finvoice.invoice_details.origin_code.value = "Original"
    @finvoice.invoice_details.invoice_number.value = "123456"
    @finvoice.invoice_details.invoice_date.set_attribute("Format", "CCYYMMDD")
    @finvoice.invoice_details.invoice_date.value = "20181203"
    @finvoice.invoice_details.order_identifier.value = "20130801"
    @finvoice.invoice_details.agreement_identifier.value = "12345"
    @finvoice.invoice_details.rows_total_vat_excluded_amount.set_attribute("AmountCurrencyIdentifier", "EUR")
    @finvoice.invoice_details.rows_total_vat_excluded_amount.value = "100,00"
    @finvoice.invoice_details.invoice_total_vat_excluded_amount.set_attribute("AmountCurrencyIdentifier", "EUR")
    @finvoice.invoice_details.invoice_total_vat_excluded_amount.value = "100,00"
    @finvoice.invoice_details.invoice_total_vat_amount.set_attribute("AmountCurrencyIdentifier", "EUR")
    @finvoice.invoice_details.invoice_total_vat_amount.value = "24,00"
    @finvoice.invoice_details.invoice_total_vat_included_amount.set_attribute("AmountCurrencyIdentifier", "EUR")
    @finvoice.invoice_details.invoice_total_vat_included_amount.value = "124,00"
    @finvoice.invoice_details.vat_specification_details.vat_base_amount.set_attribute("AmountCurrencyIdentifier", "EUR")
    @finvoice.invoice_details.vat_specification_details.vat_base_amount.value = "100,00"
    @finvoice.invoice_details.vat_specification_details.vat_rate_percent.value = "24,00"
    @finvoice.invoice_details.vat_specification_details.vat_code.value = "S"
    @finvoice.invoice_details.vat_specification_details.vat_rate_amount.set_attribute("AmountCurrencyIdentifier", "EUR")
    @finvoice.invoice_details.vat_specification_details.vat_rate_amount.value = "24,00"
    @finvoice.invoice_details.payment_terms_details.payment_terms_free_text.value = "14 päivää netto"
    @finvoice.invoice_details.payment_terms_details.invoice_due_date.set_attribute("Format", "CCYYMMDD")
    @finvoice.invoice_details.payment_terms_details.invoice_due_date.value = "20181217"
    @finvoice.invoice_details.payment_terms_details.payment_over_due_fine_details.payment_over_due_fine_free_text.value = "Viivästyskorko"
    @finvoice.invoice_details.payment_terms_details.payment_over_due_fine_details.payment_over_due_fine_percent.value = "8,5"

    invoice_row = Finvoice3::InvoiceRow.new
    invoice_row.article_identifier.value = "12345"
    invoice_row.article_name.value = "Sisustustaulu"
    invoice_row.delivered_quantity.set_attribute("QuantityUnitCode", "kpl")
    invoice_row.delivered_quantity.set_attribute("QuantityUnitCodeUN", "C62")
    invoice_row.delivered_quantity.value = "2"
    invoice_row.invoiced_quantity.set_attribute("QuantityUnitCode", "kpl")
    invoice_row.invoiced_quantity.set_attribute("QuantityUnitCodeUN", "C62")
    invoice_row.invoiced_quantity.value = "2"
    invoice_row.unit_price_amount.set_attribute("AmountCurrencyIdentifier", "EUR")
    invoice_row.unit_price_amount.value = "50,00"
    invoice_row.unit_price_net_amount.set_attribute("AmountCurrencyIdentifier", "EUR")
    invoice_row.unit_price_net_amount.value = "50,00"
    invoice_row.row_position_identifier.value = "1"
    invoice_row.row_vat_rate_percent.value = "24,00"
    invoice_row.row_vat_code.value = "S"
    invoice_row.row_vat_amount.set_attribute("AmountCurrencyIdentifier", "EUR")
    invoice_row.row_vat_amount.value = "24,00"
    invoice_row.row_vat_excluded_amount.set_attribute("AmountCurrencyIdentifier", "EUR")
    invoice_row.row_vat_excluded_amount.value = "100,00"
    @finvoice.invoice_rows << invoice_row

    @finvoice.epi_details.epi_identification_details.epi_date.set_attribute("Format", "CCYYMMDD")
    @finvoice.epi_details.epi_identification_details.epi_date.value = "20160208"
    @finvoice.epi_details.epi_party_details.epi_bfi_party_details.epi_bfi_identifier.identification_scheme_name = "BIC"
    @finvoice.epi_details.epi_party_details.epi_bfi_party_details.epi_bfi_identifier.value = "NDEAFIHH"
    @finvoice.epi_details.epi_party_details.epi_beneficiary_party_details.epi_name_address_details.value = "Pullin Musiikki Oy"
    @finvoice.epi_details.epi_party_details.epi_beneficiary_party_details.epi_account_id.identification_scheme_name = "IBAN"
    @finvoice.epi_details.epi_party_details.epi_beneficiary_party_details.epi_account_id.value = "FI7429501800000014"
    @finvoice.epi_details.epi_payment_instruction_details.epi_payment_instruction_id.value = "123456789"
    @finvoice.epi_details.epi_payment_instruction_details.epi_remittance_info_identifier.identification_scheme_name = "ISO"
    @finvoice.epi_details.epi_payment_instruction_details.epi_remittance_info_identifier.value = "RF911234567890120"
    @finvoice.epi_details.epi_payment_instruction_details.epi_instructed_amount.set_attribute("AmountCurrencyIdentifier", "EUR")
    @finvoice.epi_details.epi_payment_instruction_details.epi_instructed_amount.value = "124,00"
    @finvoice.epi_details.epi_payment_instruction_details.epi_charge.charge_option = "SLEV"
    @finvoice.epi_details.epi_payment_instruction_details.epi_date_option_date.set_attribute("Format", "CCYYMMDD")
    @finvoice.epi_details.epi_payment_instruction_details.epi_date_option_date.value = "20181217"
    @finvoice.epi_details.epi_payment_instruction_details.epi_payment_means_code.value = "58"

    assert_empty errors
  end
end
