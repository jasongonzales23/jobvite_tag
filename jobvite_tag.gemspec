# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'locomotive/jobvite_tag/version'

Gem::Specification.new do |spec|
  spec.name          = "jobvite_tag"
  spec.version       = Locomotive::JobviteTag::VERSION
  spec.authors       = ["Jason Gonzales"]
  spec.email         = ["jason.gonzales23@gmail.com"]
  spec.description   = %q{Jobvite Liquid tag}
  spec.summary       = %q{Liquid Tag to be used with LocomotiveCMS, it pulls in the Jobvite JSON API}
  spec.homepage      = "http://github.com"
  spec.license       = "MIT"

  #spec.files         = `git ls-files`.split($/)
  #spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  #spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency 'locomotivecms-solid', '~> 0.2.2.1'

  spec.files = Dir.glob('lib/**/*')
end
