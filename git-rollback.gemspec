# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'git-rollback/version'

Gem::Specification.new do |s|
  s.name          = "git-rollback"
  s.version       = GitRollback::VERSION
  s.authors       = ["Bin Huang"]
  s.email         = ["huangbin88@foxmail.com"]
  s.summary       = %q{Easily rollback commits.}
  s.description   = %q{Easily rollback last N commits.}
  s.homepage      = "https://github.com/hbin/git-rollback"
  s.license       = "MIT"

  s.files         = `git ls-files -z`.split("\x0")
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|s|features)/})
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'slop', '~> 3.6.0'

  s.add_development_dependency "bundler", "~> 1.7"
  s.add_development_dependency "rake", "~> 10.0"
end
