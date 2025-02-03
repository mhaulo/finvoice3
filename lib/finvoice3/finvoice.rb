# frozen_string_literal: true

module Finvoice3
	class Finvoice < Tag::Complex
		attr_accessor :message_transmission_details
		attr_accessor :seller_party_details
		attr_accessor :seller_information_details
		attr_accessor :seller_organisation_number
		attr_accessor :seller_site_code
		attr_accessor :seller_contact_person_name
		attr_accessor :seller_contact_person_function
		attr_accessor :seller_contact_person_department
		attr_accessor :seller_communication_details
		attr_accessor :invoice_sender_party_details
		attr_accessor :invoice_recipient_party_details
		attr_accessor :invoice_recipient_organisation_unit_number
		attr_accessor :invoice_recipient_site_code
		attr_accessor :invoice_recipient_contact_person_name
		attr_accessor :invoice_recipient_contact_person_function
		attr_accessor :invoice_recipient_contact_person_department
		attr_accessor :invoice_recipient_language_code
		attr_accessor :invoice_recipient_communication_details
		attr_accessor :buyer_party_details
		attr_accessor :buyer_organisation_unit_number
		attr_accessor :buyer_site_code
		attr_accessor :buyer_contact_person_name
		attr_accessor :buyer_contact_person_function
		attr_accessor :buyer_contact_person_department
		attr_accessor :buyer_communication_details
		attr_accessor :delivery_party_details
		attr_accessor :delivery_organisation_unit_number
		attr_accessor :delivery_site_code
		attr_accessor :delivery_contact_person_name
		attr_accessor :delivery_contact_person_function
		attr_accessor :delivery_contact_person_department
		attr_accessor :delivery_communication_details
		attr_accessor :delivery_details
		attr_accessor :any_party_details
		attr_accessor :invoice_details
		attr_accessor :payment_card_info
		attr_accessor :direct_debit_info
		attr_accessor :payment_status_details
		attr_accessor :partial_payment_details
		attr_accessor :factoring_agreement_details
		attr_accessor :virtual_bank_barcode
		attr_accessor :invoice_rows
		attr_accessor :specification_details
		attr_accessor :epi_details
		attr_accessor :invoice_url_name
		attr_accessor :invoice_url_text
		attr_accessor :storage_url_text
		attr_accessor :lay_out_identifier
		attr_accessor :invoice_segment_identifier
		attr_accessor :control_checksum
		attr_accessor :message_checksum
		attr_accessor :control_stamp_text
		attr_accessor :acceptance_stamp_text
		attr_accessor :original_invoice_format
		attr_accessor :attachment_message_details
		
		def initialize
			super
			@message_transmission_details = MessageTransmissionDetails.new
			@seller_party_details = SellerPartyDetails.new
			@seller_information_details = SellerInformationDetails.new
			@seller_communication_details = SellerCommunicationDetails.new
			@seller_organisation_number = Tag::Simple.new(name: "SellerOrganisationNumber")
			@seller_site_code = Tag::Simple.new(name: "SellerSiteCode")
			@seller_contact_person_name = Tag::Simple.new(name: "SellerContactPersonName")
			@seller_contact_person_function = Tag::Simple.new(name: "SellerContactPersonFunction")
			@seller_contact_person_department = Tag::Simple.new(name: "SellerContactPersonDepartment")
			@invoice_sender_party_details = InvoiceSenderPartyDetails.new
			@invoice_recipient_party_details = InvoiceRecipientPartyDetails.new
			@invoice_recipient_organisation_unit_number = Tag::Simple.new(name: "InvoiceRecipientOrganisationUnitNumber")
			@invoice_recipient_site_code = Tag::Simple.new(name: "InvoiceRecipientSiteCode")
			@invoice_recipient_contact_person_name = Tag::Simple.new(name: "InvoiceRecipientContactPersonName")
			@invoice_recipient_contact_person_department = Tag::Simple.new(name: "InvoiceRecipientContactPersonDepartment")
			@invoice_recipient_language_code = Tag::Simple.new(name: "InvoiceRecipientLanguageCode")
			@invoice_recipient_communication_details = InvoiceRecipientCommunicationDetails.new
			@buyer_party_details = BuyerPartyDetails.new
			@buyer_organisation_unit_number = Tag::Simple.new(name: "BuyerOrganisationUnitNumber")
			@buyer_site_code = Tag::Simple.new(name: "BuyerSiteCode")
			@buyer_contact_person_name = Tag::Simple.new(name: "BuyerContactPersonName")
			@buyer_contact_person_function = Tag::Simple.new(name: "BuyerContactPersonFunction")
			@buyer_contact_person_department = Tag::Simple.new(name: "BuyerContactPersonDepartment")
			@buyer_communication_details = BuyerCommunicationDetails.new
			@delivery_party_details = DeliveryPartyDetails.new
			@delivery_organisation_unit_number = Tag::Simple.new(name: "DeliveryOrganisationUnitNumber")
			@delivery_site_code = Tag::Simple.new(name: "DeliverySiteCode")
			@delivery_contact_person_name = Tag::Simple.new(name: "DeliveryContactPersonName")
			@delivery_contact_person_function = Tag::Simple.new(name: "DeliveryContactPersonFunction")
			@delivery_contact_person_department = Tag::Simple.new(name: "DeliveryContactPersonDepartment")
			@delivery_communication_details = DeliveryCommunicationDetails.new
			@delivery_details = DeliveryDetails.new
			@any_party_details = AnyPartyDetails.new
			@invoice_details = InvoiceDetails.new
			@payment_card_info = PaymentCardInfo.new
			@direct_debit_info = DirectDebitInfo.new
			@payment_status_details = PaymentStatusDetails.new
			@partial_payment_details = PartialPaymentDetails.new
			@factoring_agreement_details = FactoringAgreementDetails.new
			@virtual_bank_barcode = Tag::Simple.new(name: "VirtualBankBarcode")
			@invoice_rows = []
			@specification_details = SpecificationDetails.new
			@epi_details = EpiDetails.new
			@invoice_url_name = Tag::Simple.new(name: "InvoiceUrlName")
			@invoice_url_text = Tag::Simple.new(name: "InvoiceUrlText")
			@storage_url_text = Tag::Simple.new(name: "StorageUrlText")
			@lay_out_identifier = Tag::Simple.new(name: "LayOutIdentifier")
			@invoice_segment_identifier = Tag::Simple.new(name: "InvoiceSegmentIdentifier")
			@control_checksum = Tag::Simple.new(name: "ControlChecksum")
			@message_checksum = Tag::Simple.new(name: "MessageChecksum")
			@control_stamp_text = Tag::Simple.new(name: "ControlStampText")
			@acceptance_stamp_text = Tag::Simple.new(name: "AcceptanceStampText")
			@original_invoice_format = Tag::Simple.new(name: "OriginalInvoiceFormat")
			@attachment_message_details = AttachmentMessageDetails.new
		end
		
		def sub_tags
			[
				@message_transmission_details,
				@seller_party_details,
				@seller_information_details,
				@seller_organisation_number,
				@seller_site_code,
				@seller_contact_person_name,
				@seller_contact_person_function,
				@seller_contact_person_department,
				@seller_communication_details,
				@invoice_sender_party_details,
				@invoice_recipient_party_details,
				@invoice_recipient_organisation_unit_number,
				@invoice_recipient_site_code,
				@invoice_recipient_contact_person_name,
				@invoice_recipient_contact_person_function,
				@invoice_recipient_contact_person_department,
				@invoice_recipient_language_code,
				@invoice_recipient_communication_details,
				@buyer_party_details,
				@buyer_organisation_unit_number,
				@buyer_site_code,
				@buyer_contact_person_name,
				@buyer_contact_person_function,
				@buyer_contact_person_department,
				@buyer_communication_details,
				@delivery_party_details,
				@delivery_organisation_unit_number,
				@delivery_site_code,
				@delivery_contact_person_name,
				@delivery_contact_person_function,
				@delivery_contact_person_department,
				@delivery_communication_details,
				@delivery_details,
				@any_party_details,
				@invoice_details,
				@payment_card_info,
				@direct_debit_info,
				@payment_status_details,
				@partial_payment_details,
				@factoring_agreement_details,
				@virtual_bank_barcode,
				*@invoice_rows,
				@specification_details,
				@epi_details,
				@invoice_url_name,
				@invoice_url_text,
				@storage_url_text,
				@lay_out_identifier,
				@invoice_segment_identifier,
				@control_checksum,
				@message_checksum,
				@control_stamp_text,
				@acceptance_stamp_text,
				@original_invoice_format,
				@attachment_message_details
			] 
		end

		def attributes
			{
				"Version": "3.0",
				"xmlns:xsi": "http://www.w3.org/2001/XMLSchema-instance",
				"xsi:noNamespaceSchemaLocation": Finvoice3::XSD_SCHEMA
			}
		end
	end
end
