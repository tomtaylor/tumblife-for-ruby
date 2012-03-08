# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "tumblife/version"

Gem::Specification.new do |s|
  s.name        = "tumblife"
  s.version     = Tumblife::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Kazuya Takeshima"]
  s.email       = ["mail@mitukiii.jp"]
  s.homepage    = "https://github.com/mitukiii/tumblife-for-ruby"
  s.summary     = %q{Tumblife is a simple Tumblr API v2 library.}
  s.description = %q{Tumblife is a simple Tumblr API v2 library.}

  s.rubyforge_project = "tumblife"
  s.add_runtime_dependency("oauth", "~> 0.4.5")
  s.add_runtime_dependency("json", "~> 1.6.4") if RUBY_VERSION < "1.9"
  s.add_runtime_dependency("activesupport", "~> 3.1.3")
  s.add_development_dependency("rspec", "~> 2.8.0")
  s.add_development_dependency("rake", "~> 0.9.2.2")

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
