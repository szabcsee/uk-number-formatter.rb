module UK
  COUNTRY_FORMAT = /(^\+447[0-9]{9}$)|(^07[0-9]{9}$)|(^447[0-9]{9}$)/
  COUNTRY_CODE = '+447'
  SUB_COUNTRY_CODE = /(^07)|(^447)/

  def self.format phone_number
    raise FormatterError('The input variable must be a string') unless number.is_a? String

    @number = remove_white_space(phone_number)

    @number = validate_country_format(phone_number, get_country_format)
    @number = replace_country_code(phone_number, get_sub_country_code, get_country_code)

    raise FormatterError('This is not a valid UK number') unless validate_country_format(@number, country_format)

  end
end