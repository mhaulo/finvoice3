module Finvoice3
	class InvoiceRecipientPartyDetails < Tag::Complex
		attr_accessor :invoice_recipient_party_identifier
		attr_accessor :invoice_recipient_organisation_name
		attr_accessor :invoice_recipient_department
		attr_accessor :invoice_recipient_organisation_tax_code
		attr_accessor :invoice_recipient_code
		attr_accessor :invoice_recipient_postal_address_details
		
		def initialize
			super
			@invoice_recipient_party_identifier = PartyLegalRegId.new
			@invoice_recipient_organisation_name = Tag::Simple.new(name: "InvoiceRecipientOrganisationName")
			@invoice_recipient_department = Tag::Simple.new(name: "InvoiceRecipientDepartment")
			@invoice_recipient_organisation_tax_code = Tag::Simple.new(name: "InvoiceRecipientOrganisationTaxCode")
			@invoice_recipient_code = PartyIdentifier.new
			@invoice_recipient_postal_address_details = InvoiceRecipientPostalAddressDetails.new
		end
		
		def sub_tags
			[
				@invoice_recipient_party_identifier,
				@invoice_recipient_organisation_name,
				@invoice_recipient_department,
				@invoice_recipient_organisation_tax_code,
				@invoice_recipient_code,
				@invoice_recipient_postal_address_details
			]
		end
	end
end
