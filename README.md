# Finvoice 3.0 xml generator

This is placeholder readme file for finvoice3 gem.

## How to run tests

```
rake test
```

## How to use the gem

```
require_relative "lib/finvoice3"

invoice = Finvoice3::Invoice.new
invoice.to_xml

```

## How to validate an invoice

```
invoice = Finvoice3::Invoice.new
invoice.validate
```

An empty invoice should be invalid.

## Raw API

Currently the finvoice3 gem provides a raw API to the document structure. This gives you complete freedom to manipulate the document, but does not do any calculations of validation of the input.

Entity names are snake_case versions of the Finvoice XML tag names. For example, to access message MessageTransmissionDetails -> FromIdentifier:

```
invoice = Finvoice3::Invoice.new
invoice.message_transmission_details.from_identifier
```

This gives you the FromIdentifier tag. To change its value, set the `value` attribute:

```
invoice.message_transmission_details.from_identifier.value = "OKOYFIHH"
```

