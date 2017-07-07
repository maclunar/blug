$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "blug/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "blug"
  s.version     = Blug::VERSION
  s.authors     = ["maclunar"]
  s.email       = ["maclunar@gmail.com"]
  s.homepage    = "http://maclunar.com"
  s.summary     = "Summary of Blug."
  s.description = "Description of Blug."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.4"

  s.add_development_dependency "pg"
end
