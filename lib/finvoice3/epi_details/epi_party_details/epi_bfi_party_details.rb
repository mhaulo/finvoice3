module Finvoice3
	class EpiDetails::EpiPartyDetails::EpiBfiPartyDetails < Tag::Complex
		attr_accessor :epi_bfi_identifier
		attr_accessor :epi_bfi_name
		
		def initialize
			super
			@epi_bfi_identifier = EpiBfiIdentifier.new
			@epi_bfi_name = Tag::Simple.new(name: "EpiBfiName")
		end
		
		def sub_tags
			[
				@epi_bfi_identifier,
				@epi_bfi_name
			]
		end
	end
end
