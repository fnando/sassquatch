# -*- encoding: utf-8 -*-
require File.expand_path("../lib/sassquatch/version", __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Nando Vieira"]
  gem.email         = ["fnando.vieira@gmail.com"]
  gem.description   = "Some SCSS helpers"
  gem.summary       = gem.description
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "sassquatch"
  gem.require_paths = ["lib"]
  gem.version       = Sassquatch::VERSION

  gem.add_dependency "thor"
  gem.add_development_dependency "rake"
end
