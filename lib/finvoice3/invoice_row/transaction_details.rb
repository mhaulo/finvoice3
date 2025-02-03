module Finvoice3
	class InvoiceRow::TransactionDetails < Tag::Complex
		attr_accessor :other_currency_amount
		attr_accessor :exchange_rate
		attr_accessor :exchange_date
		
		def initialize(name: "TransactionDetails")
			super(name: name)
			@other_currency_amount = Tag::Simple.new(name: "OtherCurrencyAmount")
			@exchange_rate = Tag::Simple.new(name: "ExchangeRate")
			@exchange_date = Tag::Simple.new(name: "ExchangeDate")
		end
		
		def sub_tags
			[
				@other_currency_amount,
				@exchange_rate,
				@exchange_date
			]
		end
	end
end
