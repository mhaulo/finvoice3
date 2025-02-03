module Finvoice3
	class EpiDetails::EpiPartyDetails < Tag::Complex
		attr_accessor :epi_bfi_party_details
		attr_accessor :epi_beneficiary_party_details
		
		def initialize
			super
			@epi_bfi_party_details = EpiBfiPartyDetails.new
			@epi_beneficiary_party_details = EpiBeneficiaryPartyDetails.new
		end
		
		def sub_tags
			[
				@epi_bfi_party_details,
				@epi_beneficiary_party_details
			]
		end
	end
end
