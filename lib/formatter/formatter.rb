module Formatter

  def self.remove_white_space(number)
    number.gsub(/\s+/, '')
  end
end