module Finvoice3
	class PartyLegalRegId < Tag::Simple
		attr_accessor :scheme_id
		
		def initialize(name: nil)
			super(name: name)
		end
		
		def attributes
			{"SchemeID": @scheme_id}
		end
	end
end
