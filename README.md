# Rack::Root::Apex
Redirects all requests with a 'www' in the hostname to the non-www host version.

## Installation
Add this line to your application's Gemfile:

    gem 'rack-root-apex', :require => 'rack/root-apex'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rack-root-apex

## Usage

    use Rack::RootApex

## Contributing
1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
