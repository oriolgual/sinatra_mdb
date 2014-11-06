# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sinatra_mdb/version'

Gem::Specification.new do |spec|
  spec.name          = "sinatra_mdb"
  spec.version       = SinatraMdb::VERSION
  spec.authors       = ["Oriol Gual"]
  spec.email         = ["oriol.gual@gmail.com"]
  spec.summary       = %q{A simple game for movie lovers}
  spec.description   = %q{We are holding a party! You know how parties are at Ironhack so expect no snacks here. In our case we will hold a movie party but fear not, we are not watching "Elvira, mistress of the dark" again. We are building a simple game for movie lovers.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.1"
  spec.add_development_dependency "pry"
  spec.add_dependency "sinatra", "1.4.5"
  spec.add_dependency "sinatra-contrib", "1.4.2"
  spec.add_dependency "imdb", "0.8.2"
  spec.add_dependency "foreman"
end
