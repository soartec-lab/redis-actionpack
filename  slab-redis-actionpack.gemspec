# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'redis/actionpack/version'

Gem::Specification.new do |s|
  s.name        = 'slab-redis-actionpack'
  s.version     = Redis::ActionPack::VERSION
  s.authors     = ['Shodai Suzuki']
  s.email       = ['shodaiconnection@gmail.com']
  s.homepage    = 'https://github.com/soartec-lab/redis-actionpack'
  s.summary     = %q{Redis session store for ActionPack. redis-actionpack Gem replacement}
  s.description = "#{s.summary}. Used for storing the Rails session in Redis."
  s.license     = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = []
  s.require_paths = ['lib']
  s.required_ruby_version = '>= 2.3.0'

  s.add_runtime_dependency 'redis-store', '>= 1.1.0', '< 2'
  s.add_runtime_dependency 'redis-rack',  '>= 2.1.0', '< 3'
  s.add_runtime_dependency 'actionpack',  '>= 5', '< 8'
end
