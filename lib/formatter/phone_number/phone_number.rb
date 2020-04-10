module PhoneNumber
  include UK

  def validate_country_format number, format
    number.match?(format)
  end

  def replace_country_code phone_number, sub_country_code, country_code
    phone_number.sub(sub_country_code, country_code)
  end
end