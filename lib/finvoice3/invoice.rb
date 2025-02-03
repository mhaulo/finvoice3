# frozen_string_literal: true

require "nokogiri"

module Finvoice3
	class Invoice
		attr_accessor :finvoice
		
		def initialize
			@finvoice = Finvoice.new
		end
		
		def document
			Nokogiri::XML::Builder.new(encoding: "ISO-8859-15") do |root|
				@finvoice.to_xml(root)
			end
		end
		
		def to_xml
			document.to_xml
		end
		
		def validate
			xml = document.to_xml
			xsd = Nokogiri::XML::Schema(File.read(File.join(File.dirname(__FILE__), XSD_SCHEMA)))
			document = Nokogiri::XML(xml)

			xsd.validate(document).map do |error|
				error.message
			end
		end
	end
end
