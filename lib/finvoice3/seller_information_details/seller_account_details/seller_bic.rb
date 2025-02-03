module Finvoice3
	class SellerInformationDetails::SellerAccountDetails::SellerBic < Tag::Simple
		attr_accessor :identification_scheme_name
		
		def initialize
			super
			@identification_scheme_name = ""
		end
		
		def attributes
			{"IdentificationSchemeName": @identification_scheme_name}
		end
	end
end
