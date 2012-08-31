# -*- encoding: utf-8 -*-
require File.expand_path('../lib/railties-3.0.10/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Will Schive"]
  gem.email         = ["lexigram@goodworksonearth.org"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "railties-3.0.10"
  gem.require_paths = ["lib"]
  gem.version       = Railties::3.0.10::VERSION
end
