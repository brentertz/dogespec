# DogeSpec

A dogified RSpec formatter that that spices up your specs with doge speak!

such gem. wow.

## Installation

Add this line to your application's Gemfile:

    gem 'dogespec'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dogespec

## Usage

Run your specs using the following syntax:

	rspec --format Dogespec::Formatter --color spec

Or if you would like to make it your default RSpec formatter, create a `.rspec` file in your project root directory with the following contents:

	--format Dogespec::Formatter
	--color

## Contributing

1. Fork it ( http://github.com/brentertz/dogespec/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
