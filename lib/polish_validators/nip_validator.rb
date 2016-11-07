module PolishValidators
  class NipValidator
    def initialize(nip)
      @nip = nip.to_s
    end

    def valid?
      return unless @nip =~ /\A\d{10}\Z/

      weights = [6, 5, 7, 2, 3, 4, 5, 6, 7]
      nip = @nip.split(//).collect(&:to_i)
      checksum = weights.reduce(0) { |a, e| a + nip.shift * e }

      checksum % 11 == nip.shift
    end
  end
end
