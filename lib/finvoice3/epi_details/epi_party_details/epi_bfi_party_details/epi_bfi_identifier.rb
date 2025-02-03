module Finvoice3
	class EpiDetails::EpiPartyDetails::EpiBfiPartyDetails::EpiBfiIdentifier < Tag::Simple
		attr_accessor :identification_scheme_name
		
		def initialize
			super
			@identification_scheme_name = "" # "BIC"
		end
		
		def attributes
			{"IdentificationSchemeName": @identification_scheme_name}
		end
	end
end
