module Formatter::PhoneNumber

  def self.validate_country_format(number, format)
    format.match?(number)
  end

  def self.replace_country_code(phone_number, sub_country_code, country_code)
    phone_number.sub(sub_country_code, country_code)
  end
end