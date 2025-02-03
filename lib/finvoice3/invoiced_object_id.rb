module Finvoice3
	class InvoicedObjectId < Tag::Simple
		attr_accessor :scheme_id
		
		def initialize(name: "InvoicedObjectID")
			super(name: name)
		end
		
		def attributes
			{"SchemeID": @scheme_id}
		end
	end
end
