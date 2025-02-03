module Finvoice3
	class InvoiceRow::SubInvoiceRow::SubRowDefinitionDetails::SubRowDefinitionHeaderText < Tag::Simple
		attr_accessor :definition_code

		def attributes
			{"DefinitionCode": @definition_code}
		end
	end
end
