module Finvoice3
	class OriginalInvoiceReference < Tag::Complex
		attr_accessor :invoice_number
		attr_accessor :invoice_date
		
		def initialize(name: nil)
			super(name: name)
			@invoice_number = Tag::Simple.new(name: "InvoiceNumber")
			@invoice_date = Tag::Simple.new(name: "InvoiceDate")
		end
		
		def sub_tags
			[
				@invoice_number,
				@invoice_date
			]
		end
	end
end
