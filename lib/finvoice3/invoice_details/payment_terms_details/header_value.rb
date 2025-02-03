module Finvoice3
	class InvoiceDetails::PaymentTermsDetails::HeaderValue < Tag::Complex
		attr_accessor :header
		attr_accessor :value
		
		def initialize
			super
			@header = Tag::Simple.new(name: "Header")
			@value = Tag::Simple.new(name: "Value")
		end
		
		def sub_tags
			[@header, @value]
		end
	end
end
