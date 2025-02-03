module Finvoice3
	class EpiDetails::EpiPaymentInstructionDetails::EpiCharge < Tag::Simple
		attr_accessor :charge_option
		
		def initialize
			super
			@charge_option = ""
		end
		
		def attributes
			{"ChargeOption": @charge_option}
		end
	end
end
