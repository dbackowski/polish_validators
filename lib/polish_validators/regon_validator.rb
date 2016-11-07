module PolishValidators
  class RegonValidator
    def initialize(regon)
      @regon = regon.to_s
    end

    def valid?
      return unless @regon =~ /\A\d{9,14}\Z/

      weights8 = [8, 9, 2, 3, 4, 5, 6, 7]
      weights14 = [2, 4, 8, 5, 0, 9, 7, 3, 6, 1, 2, 4, 8]

      regon = @regon.split(//).collect(&:to_i)
      checksum = (regon.length == 9 ? weights8 : weights14).reduce(0) { |a, e| a + regon.shift * e }

      checksum % 11 == regon.shift
    end
  end
end
