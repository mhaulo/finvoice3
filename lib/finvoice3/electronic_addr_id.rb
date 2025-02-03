module Finvoice3
	class ElectronicAddrId < Tag::Simple
		attr_accessor :scheme_id
		
		def initialize(name:)
			super(name: name)
			@value = ""
		end
		
		def attributes
			{"SchemeID": @scheme_id}
		end
	end
end
