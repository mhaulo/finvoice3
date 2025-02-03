require "finvoice3/version"

Gem::Specification.new do |s|
  s.name        = "finvoice3"
  s.version     = Finvoice3::VERSION
  s.summary     = "Finvoice 3 xml generator"
  s.description = "Finvoice 3 xml generator"
  s.authors     = ["Mika Haulo"]
  s.email       = "mika@hey.com"
  s.files       = Dir["CHANGELOG.md", "LICENSE", "README.md", "Rakefile", "lib/**/*.rb"]
  s.homepage    = "https://github.com/mhaulo/finvoice3"
  s.license     = "MIT"
  
  s.require_path = "lib"
  s.required_ruby_version = ">= 2.7"
  
  s.add_runtime_dependency "nokogiri"

  s.add_development_dependency "bundler"
  s.add_development_dependency "rake"
  s.add_development_dependency "minitest"
  s.add_development_dependency "byebug"
  
  s.metadata["rubygems_mfa_required"] = "true"
end
