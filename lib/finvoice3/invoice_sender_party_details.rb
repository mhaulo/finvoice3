module Finvoice3
	class InvoiceSenderPartyDetails < Tag::Complex
		attr_accessor :invoice_sender_party_identifier
		attr_accessor :invoice_sender_organisation_name
		attr_accessor :invoice_sender_organisation_tax_code
		attr_accessor :invoice_sender_code
		
		def initialize
			super
			@invoice_sender_party_identifier = PartyLegalRegId.new
			@invoice_sender_organisation_name = Tag::Simple.new(name: "InvoiceSenderOrganisationName")
			@invoice_sender_organisation_tax_code = Tag::Simple.new(name: "InvoiceSenderOrganisationTaxCode")
			@invoice_sender_code = PartyIdentifier.new
		end
		
		def sub_tags
			[
				@invoice_sender_party_identifier,
				@invoice_sender_organisation_name,
				@invoice_sender_organisation_tax_code,
				@invoice_sender_code
			]
		end
	end
end
