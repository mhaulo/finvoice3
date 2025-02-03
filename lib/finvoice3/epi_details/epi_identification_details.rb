module Finvoice3
	class EpiDetails::EpiIdentificationDetails < Tag::Complex
		attr_accessor :epi_date
		attr_accessor :epi_reference
		attr_accessor :epi_url
		attr_accessor :epi_email
		attr_accessor :epi_order_info
		
		def initialize
			super
			@epi_date = Tag::Simple.new(name: "EpiDate")
			@epi_reference = EpiReference.new
			@epi_url = Tag::Simple.new(name: "EpiUrl")
			@epi_email = Tag::Simple.new(name: "EpiEmail")
			@epi_order_info = Tag::Simple.new(name: "EpiOrderInfo")
		end
		
		def sub_tags
			[
				@epi_date,
				@epi_reference,
				@epi_url,
				@epi_email,
				@epi_order_info
			]
		end
	end
end
