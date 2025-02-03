module Finvoice3
	class PartyIdentifier < Tag::Simple
		attr_accessor :identifier_type
		attr_accessor :scheme_id
		
		def initialize(name: nil)
			super(name: name)
		end
		
		def attributes
			{
				"IdentifierType": @identifier_type,
				"SchemeID": @scheme_id
			}
		end
	end
end
