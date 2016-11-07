module PolishValidators
  class IbanValidator
    def initialize(iban)
      @iban = iban.to_s
    end

    def valid?
      return unless @iban =~ /\APL[0-9]{26}|[0-9]{26}\Z/

      @iban.gsub!(/PL/, '')
      @iban = "#{@iban[2..-1]}2521#{@iban[0..1]}".to_i
      @iban % 97 == 1
    end
  end
end
