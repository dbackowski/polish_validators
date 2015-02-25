# PolishValidators

Library for validate polish numbers: PESEL, NIP, REGON

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'polish_validators'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install polish_validators

## Usage

NIP Validation:

```ruby
nip = PolishValidators::NipValidator.new(1234563218)
nip.valid?
=> true
```

PESEL Validation:

```ruby
pesel = PolishValidators::PeselValidator.new(44051401359)
pesel.valid?
=> true
```

REGON Validation:

```ruby
regon = PolishValidators::RegonValidator.new(123456786)
regon.valid?
=> true
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
