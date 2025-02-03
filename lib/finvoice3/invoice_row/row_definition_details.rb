module Finvoice3
	class InvoiceRow::RowDefinitionDetails < Tag::Complex
		attr_accessor :row_definition_header_text
		
		def initialize
			super
			@row_definition_header_text = RowDefinitionHeaderText.new
		end
		
		def sub_tags
			[@row_definition_header_text]
		end
	end
end
