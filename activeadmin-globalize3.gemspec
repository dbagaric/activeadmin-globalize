$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "active_admin/globalize/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "activeadmin-globalize"
  s.version     = ActiveAdmin::Globalize::VERSION
  s.authors     = ["Fabien Anthonioz"]
  s.email       = ["fabien.anthonioz@gmail.com"]
  s.homepage    = "http://github.com/fab2605/activeadmin-globalize"
  s.summary     = "Handles globalize translations for activeadmin"
  s.description = "Handles globalize translations for activeadmin"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "activeadmin"
  s.add_dependency "globalize"
end
