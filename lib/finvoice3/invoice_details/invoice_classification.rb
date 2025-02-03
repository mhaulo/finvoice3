module Finvoice3
	class InvoiceDetails::InvoiceClassification < Tag::Complex
		attr_accessor :classification_code
		attr_accessor :classification_text
		
		def initialize
			super
			@classification_code = Tag::Simple.new(name: "ClassificationCode")
			@classification_text = Tag::Simple.new(name: "ClassificationText")
		end
		
		def sub_tags
			[
				@classification_code,
				@classification_text
			]
		end
	end
end
