# GetText::MoteParser

This gem is for [Ruby GetText](https://github.com/ruby-gettext/gettext) in order to handle translations in [Mote](https://github.com/soveran/mote) template files.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gettext-mote_parser'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gettext-mote_parser

## Usage

Require the gem in your bootstrap mechanism. See below an example for a Rack/Rails based application (`config/initializers/fast_gettext.rb`):

```ruby
# frozen_string_literal: true

require 'fast_gettext'
require 'gettext/mote_parser'

Object.send(:include, FastGettext::Translation)
locales_dir = File.join(File.dirname(__FILE__), '..', 'locales')
FastGettext.add_text_domain('myapp', path: locales_dir, type: :po)
```

You are done! It's automatically add `GetText::MoteParser` in your application.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/fenicks/gettext-mote_parser.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
