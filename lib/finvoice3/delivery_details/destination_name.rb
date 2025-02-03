module Finvoice3
	class DeliveryDetails::DestinationName < Tag::Simple
		attr_accessor :scheme_id
		
		def initialize(name:)
			super(name: name)
		end
		
		def attributes
			{"SchemeID": @scheme_id}
		end
	end
end
