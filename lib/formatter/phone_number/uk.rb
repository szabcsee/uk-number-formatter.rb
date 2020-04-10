require_relative '../exceptions/formatter_error.rb'

module Formatter::PhoneNumber::UK
  COUNTRY_FORMAT = /(^\+447[0-9]{9}$)|(^07[0-9]{9}$)|(^447[0-9]{9}$)/
  COUNTRY_CODE = '+447'
  SUB_COUNTRY_CODE = /(^07)|(^447)/

  def self.format(phone_number)
    raise FormatterError, 'The input variable must be a string' unless phone_number.is_a? String

    @number = Formatter.remove_white_space(phone_number)
    @number = Formatter::PhoneNumber.replace_country_code(@number, SUB_COUNTRY_CODE, COUNTRY_CODE)

    raise FormatterError, 'This is not a valid UK number' unless Formatter::PhoneNumber.validate_country_format(@number, COUNTRY_FORMAT)

    return @number
  end
end