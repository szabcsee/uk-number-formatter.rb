module Formatter
  include PhoneNumber

  def remove_white_space number
    number.gsub(/\s+/, '')
  end
end