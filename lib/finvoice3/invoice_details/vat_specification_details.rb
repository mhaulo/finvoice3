module Finvoice3
	class InvoiceDetails::VatSpecificationDetails < Tag::Complex
		attr_accessor :vat_base_amount
		attr_accessor :vat_rate_percent
		attr_accessor :vat_code
		attr_accessor :vat_rate_amount
		attr_accessor :vat_free_text
		attr_accessor :vat_exemption_reason_code
		
		def initialize
			super
			@vat_base_amount = Tag::Simple.new(name: "VatBaseAmount")
			@vat_rate_percent = Tag::Simple.new(name: "VatRatePercent")
			@vat_code = Tag::Simple.new(name: "VatCode")
			@vat_rate_amount = Tag::Simple.new(name: "VatRateAmount")
			@vat_free_text = Tag::Simple.new(name: "VatFreeText")
			@vat_exemption_reason_code = Tag::Simple.new(name: "VatExemptionReasonCode")
		end
		
		def sub_tags
			[
				@vat_base_amount,
				@vat_rate_percent,
				@vat_code,
				@vat_rate_amount,
				@vat_free_text,
				@vat_exemption_reason_code
			]
		end
	end
end
