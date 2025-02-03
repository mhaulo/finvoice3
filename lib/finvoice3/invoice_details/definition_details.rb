module Finvoice3
	class InvoiceDetails::DefinitionDetails < Tag::Complex
		attr_accessor :definition_header_text
		attr_accessor :definition_value
		
		def initialize
			super
			@definition_header_text = DefinitionHeaderText.new
			@definition_value = Tag::Simple.new(name: "DefinitionValue")
		end
		
		def sub_tags
			[
				@definition_header_text,
				@definition_value
			]
		end
	end
end
