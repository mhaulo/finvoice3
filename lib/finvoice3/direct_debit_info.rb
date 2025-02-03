module Finvoice3
	class DirectDebitInfo < Tag::Complex
		attr_accessor :mandate_reference
		attr_accessor :creditor_identifier
		attr_accessor :debited_account_id
		
		def initialize
			super
			@mandate_reference = Tag::Simple.new(name: "MandateReference")
			@creditor_identifier = Tag::Simple.new(name: "CreditorIdentifier")
			@debited_account_id = EpiAccountId.new(name: "DebitedAccountID")
		end
		
		def sub_tags
			[
				@mandate_reference,
				@creditor_identifier,
				@debited_account_id
			]
		end
	end
end
