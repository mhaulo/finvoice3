require "nokogiri"
require File.expand_path('../test_helper', __FILE__)

class TemplateTest < Minitest::Test
	def setup
		@xsd = Nokogiri::XML::Schema(File.read(xsd_path))
		
		@seller_name = "Laukka Solutions Oy"
		@seller_y = "2562196-2"
		@seller_street_name = "Teekkarinkatu 19"
		@seller_post_code = "33720"
		@seller_town_name = "Tampere"
		@seller_intermediator = "MAVENTA"
		@seller_iban = "FI7429501800000014"
		@seller_bic = "OKOYFIHH"
		
		@buyer_name = "Aikon Oy"
		@buyer_y = "6921652-2"
		@buyer_street_name = "Paratiisitie 31"
		@buyer_post_code = "12345"
		@buyer_town_name = "Ankkalinna"
		@buyer_intermediator = "003723327487"
		
		@invoice_number = 73
		@remittance_id = "31082999"
	end
	
	def test_fi_b2b_template
		template = Finvoice3::Templates::FiB2b.new(
			seller_name: @seller_name,
			seller_y: @seller_y,
			seller_street_name: @seller_street_name,
			seller_town_name: @seller_town_name,
			seller_post_code: @seller_post_code,
			seller_intermediator: @seller_intermediator,
			seller_iban: @seller_iban,
			seller_bic: @seller_bic,
			buyer_name: @buyer_name,
			buyer_y: @buyer_y,
			buyer_street_name: @buyer_street_name,
			buyer_town_name: @buyer_town_name,
			buyer_post_code: @buyer_post_code,
			buyer_intermediator: @buyer_intermediator,
			invoice_number: @invoice_number,
			remittance_id: @remittance_id
		)
		
		template.add_row(name: "Projektityöpäivät", quantity: 22, unit_price: 485.0)
		invoice = template.invoice
		errors = invoice.validate
		
		assert_empty errors
	end  
end
