module Finvoice3
	class InvoiceRow::ArticleGroupIdentifier < Tag::Simple
		attr_accessor :scheme_id
		attr_accessor :scheme_version

		def attributes
			{
				"SchemeID": @scheme_id,
				"SchemeVersion": @scheme_version
			}
		end
	end
end
