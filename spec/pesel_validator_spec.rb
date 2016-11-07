require 'spec_helper'

describe PolishValidators::PeselValidator do
  describe '.valid?' do
    context 'with valid number' do
      it 'return true' do
        pesel = PolishValidators::PeselValidator.new(44051401359)
        expect(pesel).to be_valid
      end
    end

    context 'with invalid number' do
      it 'return false' do
        pesel = PolishValidators::PeselValidator.new(44051401358)
        expect(pesel).to_not be_valid
      end
    end
  end
end
