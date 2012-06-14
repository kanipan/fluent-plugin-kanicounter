# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["kanipan"]
  gem.email         = ["g3nt1gp03@gmail.com"]
  gem.description   = %q{kanicounter}
  gem.summary       = %q{Output filter plugin to count messages that matches "kani"}
  gem.homepage      = "https://github.com/TatsuhitoMuramatsu/fluent-plugin-kanicounter"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "fluent-plugin-kanicounter"
  gem.require_paths = ["lib"]
  gem.version       = "0.0.1"
  gem.rubyforge_project = "fluent-plugin-kanicounter"
  gem.add_development_dependency "fluentd"
  gem.add_runtime_dependency "fluentd"
end
