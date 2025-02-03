module Finvoice3
	class EpiDetails::EpiPartyDetails::EpiBeneficiaryPartyDetails < Tag::Complex
		attr_accessor :epi_name_address_details
		attr_accessor :epi_bei
		attr_accessor :epi_account_id
		
		def initialize
			super
			@epi_name_address_details = Tag::Simple.new(name: "EpiNameAddressDetails")
			@epi_bei = Tag::Simple.new(name: "EpiBei")
			@epi_account_id = Finvoice3::EpiAccountId.new(name: "EpiAccountID")
		end
		
		def sub_tags
			[
				@epi_name_address_details,
				@epi_bei,
				@epi_account_id
			]
		end
	end
end
