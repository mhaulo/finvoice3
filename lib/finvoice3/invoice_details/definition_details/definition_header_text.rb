module Finvoice3
	class InvoiceDetails::DefinitionDetails::DefinitionHeaderText < Tag::Complex
		attr_accessor :definition_code
		
		def initialize
			super
			@definition_code = Tag::Simple.new(name: "DefinitionCode")
		end
		
		def sub_tags
			[@definition_code]
		end
	end
end
