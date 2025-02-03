module Finvoice3
	class InvoiceRow::SubInvoiceRow::SubRowDefinitionDetails < Tag::Complex
		attr_accessor :sub_row_definition_header_text
		attr_accessor :sub_row_definition_value
		
		def initialize
			super
			@sub_row_definition_header_text = SubRowDefinitionHeaderText.new
			@sub_row_definition_value = Tag::Simple.new(name: "SubRowDefinitionValue")
		end
		
		def sub_tags
			[
				@sub_row_definition_header_text,
				@sub_row_definition_value
			]
		end
	end
end
