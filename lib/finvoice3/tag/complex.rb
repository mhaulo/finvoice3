module Finvoice3
	class Tag::Complex < Tag
		attr_accessor :sub_tags
		
		def initialize(name: nil)
			super(name: name)
			@sub_tags = []
		end
		
		def to_xml(parent_context)
			parent_context.send(name.to_sym, attributes.compact) do |context|
				sub_tags.compact.each do |sub_tag|
					sub_tag.to_xml(context) unless sub_tag.blank?
				end
			end
		end
		
		def blank?
			sub_tags.compact.reduce(true) { |memo, tag| memo && tag.blank? }
		end
	end
end
