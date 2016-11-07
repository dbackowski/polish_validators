require 'spec_helper'

describe PolishValidators::IbanValidator do
  describe '.valid?' do
    context 'with valid number' do
      it 'return true' do
        iban = PolishValidators::IbanValidator.new('PL61109010140000071219812874')
        expect(iban).to be_valid
      end
    end

    context 'with invalid number' do
      it 'return false' do
        iban = PolishValidators::IbanValidator.new('PL61109010140000071219812873')
        expect(iban).to_not be_valid
      end
    end
  end
end
