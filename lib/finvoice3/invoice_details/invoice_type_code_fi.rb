module Finvoice3
	class InvoiceDetails::InvoiceTypeCodeFi < Tag::Simple
		attr_accessor :code_list_agency_identifier
		
		def initialize
			super(name: "InvoiceTypeCode")
		end
		
		def attributes
			{"CodeListAgencyIdentifier": @code_list_agency_identifier}
		end
	end
end
