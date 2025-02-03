module Finvoice3
	class InvoiceRecipientPartyDetails::InvoiceRecipientPostalAddressDetails < Tag::Complex
		attr_accessor :invoice_recipient_street_name
		attr_accessor :invoice_recipient_town_name
		attr_accessor :invoice_recipient_post_cost_identifier
		attr_accessor :invoice_recipient_country_subdivision
		attr_accessor :country_code
		attr_accessor :country_name
		attr_accessor :invoice_recipient_post_office_box_identifier
		
		def initialize
			super
			@invoice_recipient_street_name = Tag::Simple.new(name: "InvoiceRecipientStreetName")
			@invoice_recipient_town_name = Tag::Simple.new(name: "InvoiceRecipientTownName")
			@invoice_recipient_post_cost_identifier = Tag::Simple.new(name: "InvoiceRecipientPostCostIdentifier")
			@invoice_recipient_country_subdivision = Tag::Simple.new(name: "InvoiceRecipientCountrySubdivision")
			@country_code = CountryCode.new
			@country_name = Tag::Simple.new(name: "CountryName")
			@invoice_recipient_post_office_box_identifier = Tag::Simple.new(name: "InvoiceRecipientPostOfficeBoxIdentifier")
		end
		
		def sub_tags
			[
				@invoice_recipient_street_name,
				@invoice_recipient_town_name,
				@invoice_recipient_post_cost_identifier,
				@invoice_recipient_country_subdivision,
				@country_code,
				@country_name,
				@invoice_recipient_post_office_box_identifier
			]
		end
	end
end
