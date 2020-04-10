# Phone Number Formatter for UK Mobile Numbers
Using Test Driven Development build a spec and implement a validator in Ruby.

## Description
This module provides a feature which ensures that a given UK mobile phone number is in a proper format.
The feature is needed to make sure that we provide the required format for a third-party service (Twillio) that
sends text messages to users.

The module was implemented that it can be extended with additional formats, 
validations etc.

## Development
The development was following a TDD approach 
keeping in mind the possibility of feature extension.
There are three modules involved.

The Formatter module contains the general method of removing white space.
The PhoneNumber module contains the required methods for formatting phone numbers.
The UK module contains the country specific constants and the format methods that
uses the parent modules' methods.

The validation and transformation happens in three steps.
Checking the type of input.
Removing white space from the string.
Matching it against the required RegExp format.

## Future Improvements 
The feature could be extended supporting different type of input types, formats, other countries.

## Limitations
The feature is currently limited in the number of accepted input formats.

## How to use it
The module should be included with require and called with 
the UK module's format method, giving a phone number string.

## Requirements
min. Ruby 2.4
Rspec

#### Developer: Szabolcs Bokonyi

