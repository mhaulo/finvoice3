module Finvoice3
	class InvoiceRecipientCommunicationDetails < Tag::Complex
		attr_accessor :invoice_recipient_phone_number_identifier
		attr_accessor :invoice_recipient_emailaddress_identifier
		
		def initialize
			super
			@invoice_recipient_phone_number_identifier = Tag::Simple.new(name: "InvoiceRecipientPhoneNumberIdentifier")
			@invoice_recipient_emailaddress_identifier = Tag::Simple.new(name: "InvoiceRecipientEmailaddressIdentifier")
		end
		
		def sub_tags
			[
				@invoice_recipient_phone_number_identifier,
				@invoice_recipient_emailaddress_identifier
			]
		end
	end
end
