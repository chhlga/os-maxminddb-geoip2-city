# Maxminddb::GeoIP2::City

This gem bundles the GeoIP2-City.mmdb database along with the [MaxMinDB gem](https://github.com/yhirose/maxminddb).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'os-maxminddb-geoip2-city'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install os-maxminddb-geoip2-city

## Usage

```ruby
require 'maxminddb/geoip2/city'

MaxMindDB.default_city_db.lookup('73.140.126.16').city_name_full
# => "Kirkland, WA"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## License

This product includes GeoIP2 data created by MaxMind purchased by OfficeSpace.com, available from
<a href="http://www.maxmind.com">http://www.maxmind.com</a>. This gem should only be used by OfficeSpace.com
staff.
