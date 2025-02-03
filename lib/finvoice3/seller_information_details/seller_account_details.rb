module Finvoice3
	class SellerInformationDetails::SellerAccountDetails < Tag::Complex
		attr_accessor :seller_account_id
		attr_accessor :seller_bic
		attr_accessor :seller_account_name
		
		def initialize
			super
			@seller_account_id = SellerAccountId.new
			@seller_bic = SellerBic.new
			@seller_account_name = Tag::Simple.new(name: "SellerAccountName")
		end
		
		def sub_tags
			[
				@seller_account_id,
				@seller_bic,
				@seller_account_name
			]
		end
	end
end
