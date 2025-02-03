module Finvoice3
	class EpiDetails < Tag::Complex
		attr_accessor :epi_identification_details
		attr_accessor :epi_party_details
		attr_accessor :epi_payment_instruction_details
		
		def initialize
			super
			@epi_identification_details = EpiIdentificationDetails.new
			@epi_party_details = EpiPartyDetails.new
			@epi_payment_instruction_details = EpiPaymentInstructionDetails.new
		end
		
		def sub_tags
			[
				@epi_identification_details,
				@epi_party_details,
				@epi_payment_instruction_details
			]
		end
	end
end
