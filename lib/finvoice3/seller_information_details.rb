module Finvoice3
	class SellerInformationDetails < Tag::Complex
		attr_accessor :seller_official_postal_address_details
		attr_accessor :seller_home_town_name
		attr_accessor :seller_vat_registration_text
		attr_accessor :seller_vat_registration_date
		attr_accessor :seller_tax_registrarion_text
		attr_accessor :seller_additional_legal_info
		attr_accessor :seller_phone_number
		attr_accessor :seller_fax_number
		attr_accessor :seller_common_emailaddress_identifier
		attr_accessor :seller_webaddress_identifier
		attr_accessor :seller_free_text
		attr_accessor :seller_account_details
		attr_accessor :invoice_recipient_details
		
		def initialize
			super
			@seller_official_postal_address_details = SellerOfficialPostalAddressDetails.new
			@seller_home_town_name = Tag::Simple.new(name: "SellerHomeTownName")
			@seller_vat_registration_text = Tag::Simple.new(name: "SellerVatRegistrationText")
			@seller_vat_registration_date = Tag::Simple.new(name: "SellerVatRegistrationDate")
			@seller_tax_registration_text = Tag::Simple.new(name: "SellerTaxRegistrationText")
			@seller_additional_legal_info = Tag::Simple.new(name: "SellerAdditionalLegalInfo")
			@seller_phone_number = Tag::Simple.new(name: "SellerPhoneNumber")
			@seller_fax_number = Tag::Simple.new(name: "SellerFaxNumber")
			@seller_common_emailaddress_identifier = Tag::Simple.new(name: "SellerCommonEmailaddressIdentifier")
			@seller_webaddress_identifier = Tag::Simple.new(name: "SellerWebaddressIdentifier")
			@seller_free_text = Tag::Simple.new(name: "SellerFreeText")
			@seller_account_details = []
			@invoice_recipient_details = InvoiceRecipientDetails.new
		end
		
		def sub_tags
			[
				@seller_official_postal_address_details,
				@seller_home_town_name,
				@seller_vat_registration_text,
				@seller_vat_registration_date,
				@seller_tax_registration_text,
				@seller_additional_legal_info,
				@seller_phone_number,
				@seller_fax_number,
				@seller_common_emailaddress_identifier,
				@seller_webaddress_identifier,
				@seller_free_text,
				*@seller_account_details,
				@invoice_recipient_details
			]
		end
		
		def add_seller_account(name: "", account_id_scheme:, account_id:, bic_scheme:, bic:)
			account = SellerAccountDetails.new
			account.seller_account_id.identification_scheme_name = account_id_scheme
			account.seller_account_id.value = account_id
			account.seller_bic.identification_scheme_name = bic_scheme
			account.seller_bic.value = bic
			@seller_account_details << account
		end
	end
end
