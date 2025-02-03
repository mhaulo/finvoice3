module Finvoice3
	class PaymentStatusDetails < Tag::Complex
		attr_accessor :payment_status_code
		attr_accessor :payment_method_text
		
		def initialize
			super
			@payment_status_code = PaymentStatusCode.new
			@payment_method_text = Tag::Simple.new(name: "PaymentMethodText")
		end
		
		def sub_tag
			[
				@payment_status_code,
				@payment_method_text
			]
		end
	end
end
