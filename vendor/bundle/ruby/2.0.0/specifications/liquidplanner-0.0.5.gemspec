# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "liquidplanner"
  s.version = "0.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Brett Bender", "Adam Sanderson", "Mark Holton"]
  s.date = "2012-10-08"
  s.description = "LiquidPlanner API client"
  s.email = ["api@liquidplanner.com"]
  s.homepage = "http://github.com/liquidplanner/liquidplanner"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "LiquidPlanner API client"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activeresource>, [">= 3.0.0", "~> 3.0.0"])
      s.add_runtime_dependency(%q<activesupport>, [">= 3.0.0", "~> 3.0.0"])
      s.add_runtime_dependency(%q<multipart-post>, [">= 1.0.1", "~> 1.0.1"])
      s.add_development_dependency(%q<highline>, [">= 1.5"])
      s.add_development_dependency(%q<mocha>, ["= 0.9.8"])
    else
      s.add_dependency(%q<activeresource>, [">= 3.0.0", "~> 3.0.0"])
      s.add_dependency(%q<activesupport>, [">= 3.0.0", "~> 3.0.0"])
      s.add_dependency(%q<multipart-post>, [">= 1.0.1", "~> 1.0.1"])
      s.add_dependency(%q<highline>, [">= 1.5"])
      s.add_dependency(%q<mocha>, ["= 0.9.8"])
    end
  else
    s.add_dependency(%q<activeresource>, [">= 3.0.0", "~> 3.0.0"])
    s.add_dependency(%q<activesupport>, [">= 3.0.0", "~> 3.0.0"])
    s.add_dependency(%q<multipart-post>, [">= 1.0.1", "~> 1.0.1"])
    s.add_dependency(%q<highline>, [">= 1.5"])
    s.add_dependency(%q<mocha>, ["= 0.9.8"])
  end
end
