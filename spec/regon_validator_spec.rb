require 'spec_helper'

describe PolishValidators::RegonValidator do
  describe '.valid?' do
    context 'with valid number' do
      it 'return true' do
        regon = PolishValidators::RegonValidator.new(123456785)
        expect(regon).to be_valid

        regon = PolishValidators::RegonValidator.new(12345678512347)
        expect(regon).to be_valid
      end
    end

    context 'with invalid number' do
      it 'return false' do
        regon = PolishValidators::RegonValidator.new(123456786)
        expect(regon).to_not be_valid

        regon = PolishValidators::RegonValidator.new(12345678512346)
        expect(regon).to_not be_valid
      end
    end
  end
end
