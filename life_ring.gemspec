
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "life_ring/version"

Gem::Specification.new do |spec|
  spec.name          = "life_ring"
  spec.version       = LifeRing::VERSION
  spec.authors       = ["Emmy White"]
  spec.email         = ["emmalinerosewhite@gmail.com"]

  spec.summary       = %q{A quick-access database of US-based hotlines for things such as addiction or depression.}
  spec.description   = %q{Life Ring conveniently places help at your fingertips for you to access when you need it most. Pulled from [Please Live](http://www.pleaselive.org/hotlines), you can find and receive help for a wide range of problems in a matter of seconds.}
  spec.homepage      = "[https://github.com/z00kie/life_ring]"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
