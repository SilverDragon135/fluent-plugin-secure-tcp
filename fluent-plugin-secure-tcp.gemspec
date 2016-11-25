# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fluent/plugin/secure/tcp/version'

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-secure-tcp"
  spec.version       = Fluent::Plugin::Secure::Tcp::VERSION
  spec.authors       = ["Bohumil Cervenka"]
  spec.email         = ["bcervenka1@gmail.com"]

  spec.description   = %q{Secure tcp input plugin for Fluent event collector}
  spec.summary       = spec.description
  spec.homepage      = 'https://github.com/SilverDragon135/fluent-plugin-in-secure-tcp'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
    
    
  spec.add_dependency "fluentd", [">= 0.10.58", "< 2"]
  spec.add_dependency "concurrent-ruby", "~> 0.9.2"
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
