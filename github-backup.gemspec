# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'github-backup/version'

Gem::Specification.new do |gem|
  gem.name          = "github-backup"
  gem.version       = Github::Backup::VERSION
  gem.authors       = ["Nat Welch"]
  gem.email         = ["nat@natwelch.com"]
  gem.summary       = "Backup your Github repositories"
  gem.homepage      = "http://github.com/ddollar/github-backup"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
