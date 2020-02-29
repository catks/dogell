
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "dogell/version"

Gem::Specification.new do |spec|
  spec.name          = "dogell"
  spec.version       = Dogell::VERSION
  spec.authors       = ["Carlos Atkinson"]
  spec.email         = ["carlos.atks@gmail.com"]

  spec.summary       = %q{Run commands on multiple servers in your Datadog Infrastructure}
  spec.homepage      = "https://github.com/catks/dogell"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "net-ssh-multi", "~> 1.2.1"
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
