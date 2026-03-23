# -*- encoding: utf-8 -*-
require File.expand_path('../lib/cld/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Alexey Makhotkin", "Alessandro Dal Grande", "Jason Toy"]
  gem.email         = ["squadette@gmail.com"]
  gem.description   = %q{Compact Language Detection for Ruby}
  gem.summary       = %q{Compact Language Detection for Ruby}
  gem.homepage      = "https://github.com/squadette/cld2"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.extensions    = ["ext/cld/extconf.rb"]
  gem.name          = "cld2"
  gem.require_paths = ["lib"]
  gem.version       = CLD::VERSION

  gem.add_dependency "ffi", "~> 1.17.0", "< 2"

  gem.add_development_dependency "rspec", "~> 3.13.2"
end
