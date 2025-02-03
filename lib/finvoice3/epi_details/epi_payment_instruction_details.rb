module Finvoice3
	class EpiDetails::EpiPaymentInstructionDetails < Tag::Complex
		attr_accessor :epi_payment_instruction_id
		attr_accessor :epi_transaction_type_code
		attr_accessor :epi_instruction_code
		attr_accessor :epi_remittance_info_identifier
		attr_accessor :epi_instructed_amount
		attr_accessor :epi_charge
		attr_accessor :epi_date_option_date
		attr_accessor :epi_payment_means_code
		attr_accessor :epi_payment_means_text
		
		def initialize
			super
			@epi_payment_instruction_id = Tag::Simple.new(name: "EpiPaymentInstructionId")
			@epi_transaction_type_code = Tag::Simple.new(name: "EpiTransactionTypeCode")
			@epi_instruction_code = Tag::Simple.new(name: "EpiInstructionCode")
			@epi_remittance_info_identifier = EpiRemittanceInfoIdentifier.new
			@epi_instructed_amount = EpiAmount.new(name: "EpiInstructedAmount")
			@epi_charge = EpiCharge.new
			@epi_date_option_date = Tag::Simple.new(name: "EpiDateOptionDate")
			@epi_payment_means_code = Tag::Simple.new(name: "EpiPaymentMeansCode")
			@epi_payment_means_text = Tag::Simple.new(name: "EpiPaymentMeansText")
		end
		
		def sub_tags
			[
				@epi_payment_instruction_id,
				@epi_transaction_type_code,
				@epi_instruction_code,
				@epi_remittance_info_identifier,
				@epi_instructed_amount,
				@epi_charge,
				@epi_date_option_date,
				@epi_payment_means_code,
				@epi_payment_means_text
			]
		end
	end
end
