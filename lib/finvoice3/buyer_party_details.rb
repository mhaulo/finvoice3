module Finvoice3
	class BuyerPartyDetails < Tag::Complex
		attr_accessor :buyer_party_identifier
		attr_accessor :buyer_party_identifier_url_text
		attr_accessor :buyer_organisation_names
		attr_accessor :buyer_organisation_trading_name
		attr_accessor :buyer_organisation_department
		attr_accessor :buyer_organisation_tax_code
		attr_accessor :buyer_organisation_tax_code_url_text
		attr_accessor :buyer_code 
		attr_accessor :buyer_postal_address_details
		
		def initialize
			super
			@buyer_party_identifier = Tag::Simple.new(name: "BuyerPartyIdentifier")
			@buyer_party_identifier_url_text = Tag::Simple.new(name: "BuyerPartyIdentifierUrlText")
			@buyer_organisation_names = []
			@buyer_organisation_trading_name = Tag::Simple.new(name: "BuyerOrganisationTradingName")
			@buyer_organisation_department = Tag::Simple.new(name: "BuyerOrganisationDepartment")
			@buyer_organisation_tax_code = Tag::Simple.new(name: "BuyerOrganisationTaxCode")
			@buyer_organisation_tax_code_url_text = Tag::Simple.new(name: "BuyerOrganisationTaxCodeUrlText")
			@buyer_code = Tag::Simple.new(name: "BuyerCode")
			@buyer_postal_address_details = BuyerPostalAddressDetails.new
		end
		
		def add_buyer_organisation_name(name)
			tag = Tag::Simple.new(name: "BuyerOrganisationName")
			tag.value = name
			@buyer_organisation_names << tag
		end
		
		def sub_tags
			[
				@buyer_party_identifier,
				@buyer_party_identifier_url_text,
				*@buyer_organisation_names,
				@buyer_organisation_trading_name,
				@buyer_organisation_department,
				@buyer_organisation_tax_code,
				@buyer_organisation_tax_code_url_text,
				@buyer_code,
				@buyer_postal_address_details
			]
		end
	end
end
