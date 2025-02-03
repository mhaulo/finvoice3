module Finvoice3
	class Tag
		attr_accessor :attributes
		attr_accessor :name
		
		def initialize(name: nil)
			@attributes = {}
			@name = name || self.class.name.split("::").last
		end
		
		def set_attribute(key, value)
			@attributes[key] = value
		end
		
		def attribute(key)
			@attributes[key]
		end
		
		def to_xml(_context)
			raise "This abstract method should be overriden"
		end
		
		def blank?
			raise "This abstract method should be overriden"
		end
	end
end
