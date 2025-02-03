module Finvoice3
	class InvoiceRow::EanCode < Tag::Simple
		attr_accessor :scheme_id
		
		def attributes
			{"SchemeID": @scheme_id}
		end
	end
end
