$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "spina/newsletter/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "spina-newsletter"
  s.version     = Spina::Newsletter::VERSION
  s.authors     = ["Mauricio Giacomini Girardello"]
  s.email       = ["mauriciogiacomini4@gmail.com"]
  s.summary     = "Newsletter system for Spina"
  s.description = "Plugin for Spina CMS to include newsletter on your website"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 5.0"

  s.add_development_dependency "sqlite3"
end
