module Finvoice3
	class SoapEnvelope
		def initialize(from_id:, from_intermediator_id:, to_id:, to_intermediator_id:)
			namespaces = {
				"xmlns:SOAP-ENV" => "http://schemas.xmlsoap.org/soap/envelope/",
				"xmlns:xlink" => "http://www.w3.org/1999/xlink",
				"xmlns:eb" => "http://www.oasis-open.org/committees/ebxml-msg/schema/msg-header-2_0.xsd"
			}
			
			message_header_attributes = {
				"xmlns:eb" => "http://www.oasis-open.org/committees/ebxml-msg/schema/msg-header-2_0.xsd", 
				"SOAP-ENV:mustUnderstand" => "1", 
				"eb:version" => "2.0"
			}
			
			manifest_attributes = {
				"eb:id" => "Manifest",
				"eb:version" => "2.0"
			}
			
			reference_attributes = {
				"eb:id" => "Finvoice",
				"xml:href" => "200911180001"
			}
			
			schema_attributes = {
				"eb:location" => "http://www.finvoice.info/finvoice.xsd",
				"eb:version" => "2.0"
			}
			
			@builder = Nokogiri::XML::Builder.new do |xml|
				xml[:"SOAP-ENV"].Envelope(namespaces) do
					xml[:"SOAP-ENV"].Header do
						xml[:eb].MessageHeader(message_header_attributes) do
							xml[:eb].From do
								xml[:eb].PartyId from_id
								xml[:eb].Role "Sender"
							end
							
							xml[:eb].From do
								xml[:eb].PartyId from_intermediator_id
								xml[:eb].Role "Intermediator"
							end
							
							xml[:eb].To do
								xml[:eb].PartyId to_id
								xml[:eb].Role "Receiver"
							end
							
							xml[:eb].To do
								xml[:eb].PartyId to_intermediator_id
								xml[:eb].Role "Intermediator"
							end
							
							xml[:eb].CPAID
							xml[:eb].ConversationId
							xml[:eb].Service
							xml[:eb].Action
							xml[:eb].MessageData do
								xml[:eb].MessageId
								xml[:eb].Timestamp
								xml[:eb].RefToMessageId
							end
						end
					end
					
					xml[:"SOAP-ENV"].Body do
						xml[:eb].Manifest(manifest_attributes) do
							xml[:eb].Reference(reference_attributes) do
								xml[:eb].Schema(schema_attributes)
							end
						end
					end
				end
			end
		end
		
		def to_xml
			Nokogiri::XML(@builder.to_xml).root.to_xml
		end
	end
end
