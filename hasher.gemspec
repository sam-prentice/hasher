require_relative 'lib/hasher/version'

Gem::Specification.new do |spec|
  spec.name          = "hasher"
  spec.version       = Hasher::VERSION
  spec.authors       = ["Sam Prentice"]
  spec.email         = ["sam.prentice@digital.education.gov.uk"]

  spec.summary       = %q{Manual implementation of a ruby hash}
  spec.description   = %q{No Cheats}
  spec.homepage      = "https://github.com/samprentice-dev/hasher.git"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/samprentice-dev/hasher.git"
  spec.metadata["changelog_uri"] = "https://github.com/samprentice-dev/hasher.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  #Add development dependencies
  spec.add_development_dependency "rspec", "~> 3.4"
end
