# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'samlsso/version'

Gem::Specification.new do |spec|
  spec.name          = "samlsso"
  spec.version       = Samlsso::VERSION
  spec.authors       = ["Siddhartha Mukherjee"]
  spec.email         = ["mukherjee.siddhartha@gmail.com"]

  spec.summary       = %q{SAML SSO for Ruby}
  spec.description   = %q{SAML SSO for Ruby}
  spec.homepage      = "https://github.com/siddhartham/samlsso"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency("uuid", ["~> 2.3"])
  spec.add_runtime_dependency("xmlenc", ["~> 0.1.7"])
  if RUBY_VERSION < '1.9'
    # 1.8.7
    spec.add_runtime_dependency('nokogiri', '~> 1.6.0')
    spec.add_development_dependency('timecop', '<= 0.6.0')
  else
    spec.add_runtime_dependency('nokogiri', '~> 1.6.0')
    spec.add_development_dependency('timecop',  '~> 0.7.2')
  end


  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
