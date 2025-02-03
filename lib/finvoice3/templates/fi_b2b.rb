module Finvoice3
	module Templates
		class FiB2b
			attr_reader :invoice
			
			ACCOUNT_ID_SCHEME = "IBAN"
			BIC_SCHEME = "BIC"
			CHARGE_OPTION = "SLEV"
			COUNTRY_CODE = "FI"
			COUNTRY_NAME = "Suomi"
			CURRENCY = "EUR"
			DATE_FORMAT = "CCYYMMDD"
			FIN_TAX_ID_PREFIX = "0037"
			INVOICE_TYPE_FI = "INV01"
			INVOICE_TYPE_TEXT = "Invoice"
			INVOICE_TYPE_UN = "380"
			ORIGIN_CODE = "Original"
			OVERDUE_FINE_PERCENT = "8,5"
			OVERDUE_FINE_TEXT = "Viivästyskorko"
			PAYMENT_TERMS_DAYS = 14
			PAYMENT_TERMS_TEXT = "#{PAYMENT_TERMS_DAYS} päivää netto"
			QUANTITY_UNIT_FI = "kpl"
			QUANTITY_UNIT_UN = "C62"
			REMITTANCE_IDENTIFICATION_SCHEME = "ISO"
			SEPA_CODE = "58"
			SPECIFICATION_IDENTIFIER = "EN16931"
			VAT_CODE = "S"
			VAT_PERCENT = 25.5
			
			INTERMEDIATORS = {
				maventa: "MAVENTA",
				apix: "003723327487",
				basware: "BAWCFI22",
				op: "OKOYFIHH",
				opus_capita: "E204503",
				open_text: "003708599126",
				cgi: "003703575029",
				pagero: "PAGERO",
				nordea: "NDEAFIHH",
				danske: "DABAFIHH",
				handelsbanken: "HANDFIHH",
				netbox: "003726044706",
				oma_sp: "ITELFIHH",
				pop: "POPFFI22",
				ropo: "003714377140",
				postnord: "003701150617",
				telia: "003703575029",
				aktia: "HELSFIHH",
				spankki: "SBANFIHH",
				tietoevry: "003701011385",
				aland_post: "003722207029",
				posti: "FI28768767",
				sp: "ITELFIHH",
				inexchange: "INEXCHANGE",
				kofax: "EXPSYS"
			}
			
			def initialize(
				seller_name:,
				seller_y:,
				seller_street_name:,
				seller_town_name:,
				seller_post_code:,
				seller_intermediator:,
				seller_iban:,
				seller_bic:,
				buyer_name:,
				buyer_y:,
				buyer_street_name:,
				buyer_town_name:,
				buyer_post_code:,
				buyer_intermediator:,
				invoice_number:,
				remittance_id:
			)
				@invoice = Finvoice3::Invoice.new
				@finvoice = @invoice.finvoice
				
				@seller_name = seller_name
				@seller_y = seller_y
				@seller_street_name = seller_street_name
				@seller_town_name = seller_town_name
				@seller_post_code = seller_post_code
				@seller_intermediator = seller_intermediator.is_a?(Symbol) ? INTERMEDIATORS[seller_intermediator] : seller_intermediator.to_s
				@seller_iban = seller_iban
				@seller_bic = seller_bic
				@from_identifier = "#{FIN_TAX_ID_PREFIX}#{seller_y.tr("-", "")}"
				@seller_tax_code = "#{COUNTRY_CODE}#{seller_y.tr("-", "")}"
				
				@buyer_name = buyer_name
				@buyer_y = buyer_y
				@buyer_street_name = buyer_street_name
				@buyer_town_name = buyer_town_name
				@buyer_post_code = buyer_post_code
				@buyer_intermediator = buyer_intermediator.is_a?(Symbol) ? INTERMEDIATORS[buyer_intermediator] : buyer_intermediator.to_s
				@to_identifier = "#{FIN_TAX_ID_PREFIX}#{buyer_y.tr("-", "")}"
				@buyer_tax_code = "#{COUNTRY_CODE}#{buyer_y.tr("-", "")}"
				
				@invoice_number = invoice_number
				@remittance_id = remittance_id
				
				@timestamp = Time.now
				@due_date = @timestamp.to_date + PAYMENT_TERMS_DAYS
				
				@total_excluding_vat = 0
				@total_vat = 0
				
				build
			end
			
			def add_row(id: nil, name: nil, quantity: 1, unit_price: 0)
				position = @finvoice.invoice_rows.size
				invoice_row = Finvoice3::InvoiceRow.new
				total_amount = quantity * unit_price
				vat_amount = total_amount * VAT_PERCENT / 100.0
				
				@total_excluding_vat += total_amount
				@total_vat += vat_amount
				
				invoice_row.article_identifier.value = id
				invoice_row.article_name.value = name
				invoice_row.delivered_quantity.set_attribute("QuantityUnitCode", QUANTITY_UNIT_FI)
				invoice_row.delivered_quantity.set_attribute("QuantityUnitCodeUN", QUANTITY_UNIT_UN)
				invoice_row.delivered_quantity.value = quantity.to_s
				invoice_row.invoiced_quantity.set_attribute("QuantityUnitCode", QUANTITY_UNIT_FI)
				invoice_row.invoiced_quantity.set_attribute("QuantityUnitCodeUN", QUANTITY_UNIT_UN)
				invoice_row.invoiced_quantity.value = quantity.to_s
				invoice_row.unit_price_amount.set_attribute("AmountCurrencyIdentifier", CURRENCY)
				invoice_row.unit_price_amount.value = f_to_s(unit_price)
				invoice_row.unit_price_net_amount.set_attribute("AmountCurrencyIdentifier", CURRENCY)
				invoice_row.unit_price_net_amount.value = f_to_s(unit_price)
				invoice_row.row_position_identifier.value = position.to_s
				invoice_row.row_vat_rate_percent.value =  f_to_s(VAT_PERCENT)
				invoice_row.row_vat_code.value = VAT_CODE
				invoice_row.row_vat_amount.set_attribute("AmountCurrencyIdentifier", CURRENCY)
				invoice_row.row_vat_amount.value = f_to_s(vat_amount)
				invoice_row.row_vat_excluded_amount.set_attribute("AmountCurrencyIdentifier", CURRENCY)
				invoice_row.row_vat_excluded_amount.value = f_to_s(vat_amount)
				
				@finvoice.invoice_rows << invoice_row
				
				calculate
				invoice_row
			end
			
			private
			
			def build
				@finvoice.seller_party_details.seller_party_identifier.value = @seller_y
				@finvoice.seller_party_details.add_seller_organisation_name @seller_name
				@finvoice.seller_party_details.seller_organisation_tax_code.value = @seller_tax_code
				@finvoice.seller_party_details.seller_postal_address_details.seller_street_name.value = @seller_street_name
				@finvoice.seller_party_details.seller_postal_address_details.seller_town_name.value = @seller_town_name
				@finvoice.seller_party_details.seller_postal_address_details.seller_post_code_identifier.value = @seller_post_code
				@finvoice.seller_party_details.seller_postal_address_details.country_code.value = COUNTRY_CODE
				@finvoice.seller_party_details.seller_postal_address_details.country_name.value = COUNTRY_NAME
				@finvoice.seller_information_details.add_seller_account(
					account_id_scheme: ACCOUNT_ID_SCHEME,
					account_id: @seller_iban,
					bic_scheme: BIC_SCHEME,
					bic: @seller_bic
				)

				@finvoice.buyer_party_details.buyer_party_identifier.value = @buyer_y
				@finvoice.buyer_party_details.add_buyer_organisation_name @buyer_name
				@finvoice.buyer_party_details.buyer_organisation_tax_code.value = @buyer_tax_code
				@finvoice.buyer_party_details.buyer_postal_address_details.buyer_street_name.value = @buyer_street_name
				@finvoice.buyer_party_details.buyer_postal_address_details.buyer_town_name.value = @buyer_town_name
				@finvoice.buyer_party_details.buyer_postal_address_details.buyer_post_code_identifier.value = @buyer_post_code
				@finvoice.buyer_party_details.buyer_postal_address_details.country_code.value = COUNTRY_CODE
				@finvoice.buyer_party_details.buyer_postal_address_details.country_name.value = COUNTRY_NAME
    
				@finvoice.delivery_details.delivery_date.set_attribute("Format", DATE_FORMAT)
				@finvoice.delivery_details.delivery_date.value = @timestamp.strftime("%Y%m%d")
    
				@finvoice.invoice_details.invoice_type_code.value = INVOICE_TYPE_FI
				@finvoice.invoice_details.invoice_type_code_un.value = INVOICE_TYPE_UN
				@finvoice.invoice_details.invoice_type_text.value = INVOICE_TYPE_TEXT
				@finvoice.invoice_details.origin_code.value = ORIGIN_CODE
				@finvoice.invoice_details.invoice_number.value = @invoice_number.to_s
				@finvoice.invoice_details.invoice_date.set_attribute("Format", DATE_FORMAT)
				@finvoice.invoice_details.invoice_date.value = @timestamp.strftime("%Y%m%d")
				@finvoice.invoice_details.rows_total_vat_excluded_amount.set_attribute("AmountCurrencyIdentifier", CURRENCY)
				@finvoice.invoice_details.invoice_total_vat_excluded_amount.set_attribute("AmountCurrencyIdentifier", CURRENCY)
				@finvoice.invoice_details.invoice_total_vat_amount.set_attribute("AmountCurrencyIdentifier", CURRENCY)
				@finvoice.invoice_details.invoice_total_vat_included_amount.set_attribute("AmountCurrencyIdentifier", CURRENCY)
				@finvoice.invoice_details.vat_specification_details.vat_base_amount.set_attribute("AmountCurrencyIdentifier", CURRENCY)
				@finvoice.invoice_details.vat_specification_details.vat_rate_percent.value = f_to_s(VAT_PERCENT)
				@finvoice.invoice_details.vat_specification_details.vat_code.value = VAT_CODE
				@finvoice.invoice_details.vat_specification_details.vat_rate_amount.set_attribute("AmountCurrencyIdentifier", CURRENCY)
				@finvoice.invoice_details.payment_terms_details.payment_terms_free_text.value = PAYMENT_TERMS_TEXT
				@finvoice.invoice_details.payment_terms_details.invoice_due_date.set_attribute("Format", DATE_FORMAT)
				@finvoice.invoice_details.payment_terms_details.invoice_due_date.value = @due_date.strftime("%Y%m%d")
				@finvoice.invoice_details.payment_terms_details.payment_over_due_fine_details.payment_over_due_fine_free_text.value = OVERDUE_FINE_TEXT
				@finvoice.invoice_details.payment_terms_details.payment_over_due_fine_details.payment_over_due_fine_percent.value = OVERDUE_FINE_PERCENT
    
				@finvoice.epi_details.epi_identification_details.epi_date.set_attribute("Format", DATE_FORMAT)
				@finvoice.epi_details.epi_identification_details.epi_date.value = @timestamp.strftime("%Y%m%d")
				@finvoice.epi_details.epi_party_details.epi_bfi_party_details.epi_bfi_identifier.identification_scheme_name = BIC_SCHEME
				@finvoice.epi_details.epi_party_details.epi_bfi_party_details.epi_bfi_identifier.value = @seller_bic
				@finvoice.epi_details.epi_party_details.epi_beneficiary_party_details.epi_name_address_details.value = @seller_name
				@finvoice.epi_details.epi_party_details.epi_beneficiary_party_details.epi_account_id.identification_scheme_name = ACCOUNT_ID_SCHEME
				@finvoice.epi_details.epi_party_details.epi_beneficiary_party_details.epi_account_id.value = @seller_iban
				@finvoice.epi_details.epi_payment_instruction_details.epi_remittance_info_identifier.identification_scheme_name = REMITTANCE_IDENTIFICATION_SCHEME
				@finvoice.epi_details.epi_payment_instruction_details.epi_remittance_info_identifier.value = @remittance_id
				@finvoice.epi_details.epi_payment_instruction_details.epi_instructed_amount.set_attribute("AmountCurrencyIdentifier", CURRENCY)
				@finvoice.epi_details.epi_payment_instruction_details.epi_charge.charge_option = CHARGE_OPTION
				@finvoice.epi_details.epi_payment_instruction_details.epi_date_option_date.set_attribute("Format", DATE_FORMAT)
				@finvoice.epi_details.epi_payment_instruction_details.epi_date_option_date.value = @due_date.strftime("%Y%m%d")
				@finvoice.epi_details.epi_payment_instruction_details.epi_payment_means_code.value = SEPA_CODE
				
				@invoice
			end
			
			def calculate
				total_including_vat = @total_excluding_vat + @total_vat
				
				@finvoice.invoice_details.rows_total_vat_excluded_amount.value = f_to_s(@total_excluding_vat)
				@finvoice.invoice_details.invoice_total_vat_excluded_amount.value = f_to_s(@total_excluding_vat)
				@finvoice.invoice_details.invoice_total_vat_amount.value = f_to_s(@total_vat)
				@finvoice.invoice_details.invoice_total_vat_included_amount.value = f_to_s(total_including_vat)
				@finvoice.invoice_details.vat_specification_details.vat_base_amount.value = f_to_s(@total_excluding_vat)
				@finvoice.invoice_details.vat_specification_details.vat_rate_amount.value = f_to_s(@total_vat)
				@finvoice.epi_details.epi_payment_instruction_details.epi_instructed_amount.value = f_to_s(total_including_vat)
			end
			
			def f_to_s(f)
				("%.2f" % f).tr(".", ",")
			end
		end
	end
end
