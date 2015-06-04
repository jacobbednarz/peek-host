# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'peek-host/version'

Gem::Specification.new do |gem|
  gem.name          = 'peek-host'
  gem.version       = Peek::Host::VERSION
  gem.authors       = ['Jacob Bednarz']
  gem.email         = ['jacob.bednarz@gmail.com']
  gem.description   = %q{Take a peek into the host which served your Rails request.}
  gem.summary       = %q{Take a peek into the host which served your Rails request.}
  gem.homepage      = 'https://github.com/jacobbednarz/peek-host'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'peek'
end
