# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "post_to_s3/version"

Gem::Specification.new do |s|
  s.name        = "post_to_s3"
  s.version     = PostToS3::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jeremy Hubert"]
  s.email       = ["jhubert@gmail.com"]
  s.homepage    = "http://github.com/jhubert/post-to-s3"
  s.summary     = %q{A simple gem for uploading files directly to s3 via a POST command}
  s.description = %q{A simple gem for uploading files directly to s3 via a POST command}

  s.rubyforge_project = "post-to-s3"
  
  s.add_runtime_dependency('activesupport', [">= 2.3.5"])
  s.add_runtime_dependency('hashie', [">= 1.2.0"])

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]
end
