module Finvoice3
	class EpiDetails::EpiPaymentInstructionDetails::EpiRemittanceInfoIdentifier < Tag::Simple
		attr_accessor :identification_scheme_name
		
		def initialize
			super(name: "EpiRemittanceInfoIdentifier")
			@identification_scheme_name = ""
		end
		
		def attributes
			{"IdentificationSchemeName": @identification_scheme_name}
		end
	end
end
