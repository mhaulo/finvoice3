module Finvoice3
	class Tag::Simple < Tag
		attr_accessor :value
		
		def to_xml(context)
			context.send(name.to_sym, value, attributes.compact)
		end
		
		def blank?
			(value.nil? or value.empty?) and attributes.values.compact.empty?
		end
	end
end
