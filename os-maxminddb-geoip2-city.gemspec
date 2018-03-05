# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'maxminddb/geoip2/city/version'

Gem::Specification.new do |spec|
  spec.name          = "os-maxminddb-geoip2-city"
  spec.version       = MaxMindDB::GeoIP2::City::VERSION
  spec.authors       = ["Amol Kelkar"]
  spec.email         = ["info@officespace.com"]

  spec.summary       = %q{Bundles the GeoIP2-City.mmdb database}
  spec.description   = %q{Bundles the GeoIP2-City.mmdb database}

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "highline", "~> 1.7"

  spec.add_dependency "maxminddb", ">= 0.1.11"
end
