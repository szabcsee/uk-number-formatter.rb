require 'spec_helper'
require_relative '../../../lib/formatter/formatter.rb'
require_relative '../../../lib/formatter/phone_number/phone_number.rb'
require_relative '../../../lib/formatter/phone_number/uk.rb'
require_relative '../../../lib/formatter/exceptions/formatter_error.rb'

describe Formatter::PhoneNumber::UK do
  let(:uk_formatter_module) { Formatter::PhoneNumber::UK }

  describe '#self.format' do

    context 'correct input' do

      it 'receives a correctly formatted number and returns it' do
        expect { uk_formatter_module.format('+447925219295') }.not_to raise_error
      end

      it 'receives a correct number starting with 447 and returns the correct format' do
        expect { uk_formatter_module.format('447925219295') }.not_to raise_error
        expect(uk_formatter_module.format('447925219295')).to eq('+447925219295')
      end

      it 'receives a correct number starting with 07 and returns the correct format' do
        expect { uk_formatter_module.format('07925219295') }.not_to raise_error
        expect(uk_formatter_module.format('07925219295')).to eq('+447925219295')
      end

      it 'receives a correct number with white spaces and returns the correct format' do
        expect { uk_formatter_module.format('0792 5219 295') }.not_to raise_error
        expect(uk_formatter_module.format('0792 5219 295')).to eq('+447925219295')
      end
    end

    context 'incorrect input' do

      it 'receives an incorrect number that does not start with 07 447 +447' do
        expect { uk_formatter_module.format('127925219295') }.to raise_error FormatterError, 'This is not a valid UK number'
      end

      it 'receives an incorrect input type' do
        expect { uk_formatter_module.format(0000_11111) }.to raise_error FormatterError, 'The input variable must be a string'
      end
    end
  end
end