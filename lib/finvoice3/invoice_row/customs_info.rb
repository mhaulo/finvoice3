module Finvoice3
	class InvoiceRow::CustomsInfo < Tag::Complex
		attr_accessor :cn_code
		attr_accessor :cn_name
		attr_accessor :cn_origin_country_subdivision
		attr_accessor :cn_origin_country_code
		attr_accessor :cn_origin_country_name
		
		def initialize(name: "CustomsInfo")
			super(name: name)
			@cn_code = Tag::Simple.new(name: "CNCode")
			@cn_name = Tag::Simple.new(name: "CNName")
			@cn_origin_country_subdivision = Tag::Simple.new(name: "CNOriginCountrySubdivision")
			@cn_origin_country_code = CountryCode.new(name: "CNOriginCountryCode")
			@cn_origin_country_name = Tag::Simple.new(name: "CNOriginCountryName")
		end
		
		def sub_tags
			[
				@cn_code,
				@cn_name,
				@cn_origin_country_subdivision,
				@cn_origin_country_code,
				@cn_origin_country_name
			]
		end
	end
end
