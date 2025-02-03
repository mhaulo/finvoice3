module Finvoice3
	class SpecificationDetails < Tag::Complex
		attr_accessor :specification_free_text
		attr_accessor :external_specification_details
		
		def initialize
			super
			@specification_free_text = Tag::Simple.new(name: "SpecificationFreeText")
			@external_specification_details = ExternalSpecificationDetails.new
		end
		
		def sub_tags
			[
				@specification_free_text,
				@external_specification_details
			]
		end
	end
end
