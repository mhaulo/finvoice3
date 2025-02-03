module Finvoice3
	class EpiAccountId < Tag::Simple
		attr_accessor :identification_scheme_name
		
		def initialize(name: "EpiAccountID")
			super(name: name)
		end
		
		def attributes
			{"IdentificationSchemeName": @identification_scheme_name}
		end
	end
end
