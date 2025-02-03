require "minitest/autorun"
require "byebug"
require_relative "../lib/finvoice3"

def xsd_path
	File.join(File.expand_path("lib/finvoice3"), Finvoice3::XSD_SCHEMA)
end
