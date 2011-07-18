# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "sqlite_log_filter/version"

Gem::Specification.new do |s|
  s.name        = "sqlite_log_filter"
  s.version     = SqliteLogFilter::VERSION
  s.authors     = ["Orban Botond"]
  s.email       = ["orbanbotond@logicoptimum.com"]
  s.homepage    = ""
  s.summary     = %q{Filter out the meta query from sqlite}
  s.description = %q{No more '...sqlite_master...' queries in your log when using sqlite}

  s.rubyforge_project = "sqlite_log_filter"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency('activerecord', '>= 3.0.9')
end
