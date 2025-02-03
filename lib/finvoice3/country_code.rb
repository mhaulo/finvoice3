module Finvoice3
	class CountryCode < Tag::Simple
		def initialize(name: nil)
			super(name: name)
		end
	end
end
