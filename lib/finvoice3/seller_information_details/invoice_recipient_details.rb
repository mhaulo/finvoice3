module Finvoice3
	class SellerInformationDetails::InvoiceRecipientDetails < Tag::Complex
		attr_accessor :invoice_recipient_address
		attr_accessor :invoice_recipient_intermediator_address
		
		def initialize
			super
			@invoice_recipient_address = Tag::Simple.new(name: "InvoiceRecipientAddress")
			@invoice_recipient_intermediator_address = Tag::Simple.new(name: "InvoiceRecipientIntermediatorAddress")
		end
		
		def sub_tags
			[
				@invoice_recipient_address,
				@invoice_recipient_intermediator_address
			]
		end
	end
end
