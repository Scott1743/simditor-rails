$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "simditor/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "simditor"
  s.version     = Simditor::VERSION
  s.authors     = ["Scott1743"]
  s.email       = ["yzt91@163.com"]
  s.homepage    = ""
  s.summary     = ""
  s.description = "Simditor for Youyu production"


  s.files = Dir["{app,config,db,lib,vendor}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"      , '> 4.0.0'
  s.add_dependency "carrierwave", '~> 0.10.0'

end
