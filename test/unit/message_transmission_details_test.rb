require "nokogiri"
require File.expand_path('../../test_helper', __FILE__)

class MessageTransmissionDetailsTest < Minitest::Test
	def setup
		@xsd = Nokogiri::XML::Schema(File.read(xsd_path))
		@message_transmission_details = Finvoice3::MessageTransmissionDetails.new
	end

	def xml
		Nokogiri::XML::Builder.new { |root| @message_transmission_details.to_xml(root) }.to_xml
	end

	def test_blank
		assert_equal "<?xml version=\"1.0\"?>\n<MessageTransmissionDetails/>\n", xml
	end
end
