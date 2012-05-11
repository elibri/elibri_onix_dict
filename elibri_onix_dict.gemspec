# -*- encoding: utf-8 -*-
require File.expand_path('../lib/elibri_onix_dict/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Marcin Urbanski"]
  gem.email         = ["marcin@urbanski.vdl.pl"]
  gem.description   = %q{EDItEUR ONIX format dictionary helpers used in eLibri publication system}
  gem.summary       = %q{EDItEUR ONIX format dictionary helpers used in eLibri publication system}
  gem.homepage      = "http://github.com/elibri/elibri_onix_dict"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "elibri_onix_dict"
  gem.require_paths = ["lib"]
  gem.version       = Elibri::ONIX::Dict::VERSION
  
  gem.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  
  gem.licenses = ["MIT"]
  
  gem.date = %q{2012-04-05}
   
  gem.add_development_dependency "pry"
  gem.add_development_dependency "minitest", ">= 0"
  gem.add_development_dependency "bundler", ">= 1.0.0"
  gem.add_development_dependency "jeweler", "~> 1.6.2"
  gem.add_development_dependency "rcov", ">= 0"
  

end
