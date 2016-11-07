module PolishValidators
  class PeselValidator
    def initialize(pesel)
      @pesel = pesel.to_s
    end

    def valid?
      return unless @pesel =~ /\A\d{11}\Z/

      weights = [1, 3, 7, 9, 1, 3, 7, 9, 1, 3]
      pesel = @pesel.split(//).collect(&:to_i)
      checksum = weights.reduce(0) { |a, e| a + pesel.shift * e }

      (10 - (checksum % 10)) % 10 == pesel.shift
    end
  end
end
