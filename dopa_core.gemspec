$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "dopa_core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "dopa_core"
  s.version     = DopaCore::VERSION
  s.authors     = ["Vinney Cavallo"]
  s.email       = ["vinney@dopa.mn"]
  s.homepage    = "http://dopa.mn"
  s.summary     = "Internal engine for Dopamine's common player/action system"
  s.description = ""

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.0.9"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails", "~> 2.12.2"
  s.add_development_dependency "factory_girl_rails", "~> 4.0"
end
