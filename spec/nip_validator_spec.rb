require 'spec_helper'

describe PolishValidators::NipValidator do
  describe '.valid?' do
    context 'with valid number' do
      it 'return true' do
        nip = PolishValidators::NipValidator.new(1234563218)
        expect(nip).to be_valid
      end
    end

    context 'with invalid number' do
      it 'return false' do
        nip = PolishValidators::NipValidator.new(1234567890)
        expect(nip).to_not be_valid
      end
    end
  end
end
