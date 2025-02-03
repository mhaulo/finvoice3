module Finvoice3
	class InvoiceRow::RowChargeDetails < Tag::Complex
		attr_accessor :reason_text
		attr_accessor :reason_code
		attr_accessor :percent
		attr_accessor :amount
		attr_accessor :base_amount
		
		def initialize(name: "RowChargeDetails")
			super(name: name)
			@reason_text = Tag::Simple.new(name: "ReasonText")
			@reason_code = Tag::Simple.new(name: "ReasonCode")
			@percent = Tag::Simple.new(name: "Percent")
			@amount = Tag::Simple.new(name: "Amount")
			@base_amount = Tag::Simple.new(name: "BaseAmount")
		end
		
		def sub_tags
			[
				@reason_text,
				@reason_code,
				@percent,
				@amount,
				@base_amount
			]
		end
	end
end
