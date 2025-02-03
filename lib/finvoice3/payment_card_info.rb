module Finvoice3
	class PaymentCardInfo < Tag::Complex
		attr_accessor :primary_account_number
		attr_accessor :card_holder_name
		
		def initialize
			super
			@primary_account_number = Tag::Simple.new(name: "PrimaryAccountNumber")
			@card_holder_name = Tag::Simple.new(name: "CardHolderName")
		end
		
		def sub_tags
			[
				@primary_account_number,
				@card_holder_name
			]
		end
	end
end
