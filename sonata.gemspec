
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sonata/version"

Gem::Specification.new do |spec|
  spec.name          = "sonata"
  spec.version       = Sonata::VERSION
  spec.authors       = ["Karim El-Husseiny"]
  spec.email         = ["karim.husseiny@gmail.com"]

  spec.summary       = %q{ActiveRecord Synchronization Solution for Microservices}
  spec.description   = %q{ActiveRecord Synchronization Solution for Microservices}
  spec.homepage      = "https://github.com/Azzurrio/sonata"
  spec.license       = "MIT"

  if spec.respond_to?(:metadata)
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/Azzurrio/sonata"
    spec.metadata["changelog_uri"] = "https://github.com/Azzurrio/sonata"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
