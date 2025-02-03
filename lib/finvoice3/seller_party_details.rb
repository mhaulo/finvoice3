module Finvoice3
	class SellerPartyDetails < Tag::Complex
		attr_accessor :seller_party_identifier
		attr_accessor :seller_party_identifier_url_text
		attr_accessor :seller_organisation_names
		attr_accessor :seller_organisation_trading_name
		attr_accessor :seller_organisation_department
		attr_accessor :seller_organisation_tax_code
		attr_accessor :seller_organisation_tax_code_url_text
		attr_accessor :seller_code 
		attr_accessor :seller_postal_address_details
		
		def initialize
			super
			@seller_party_identifier = Tag::Simple.new(name: "SellerPartyIdentifier")
			@seller_party_identifier_url_text = Tag::Simple.new(name: "SellerPartyIdentifierUrlText")
			@seller_organisation_names = []
			@seller_organisation_trading_name = Tag::Simple.new(name: "SellerOrganisationTradingName")
			@seller_organisation_department = Tag::Simple.new(name: "SellerOrganisationDepartment")
			@seller_organisation_tax_code = Tag::Simple.new(name: "SellerOrganisationTaxCode")
			@seller_organisation_tax_code_url_text = Tag::Simple.new(name: "SellerOrganisationTaxCodeUrlText")
			@seller_code = Tag::Simple.new(name: "SellerCode")
			@seller_postal_address_details = SellerPostalAddressDetails.new
		end
		
		def add_seller_organisation_name(name)
			tag = Tag::Simple.new(name: "SellerOrganisationName")
			tag.value = name
			@seller_organisation_names << tag
		end
		
		def sub_tags
			[
				@seller_party_identifier,
				@seller_party_identifier_url_text,
				*@seller_organisation_names,
				@seller_organisation_trading_name,
				@seller_organisation_department,
				@seller_organisation_tax_code,
				@seller_organisation_tax_code_url_text,
				@seller_code,
				@seller_postal_address_details
			]
		end
	end
end
