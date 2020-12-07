require_relative 'lib/lol_champions/version'

Gem::Specification.new do |spec|
  spec.name          = "lol_champions"
  spec.version       = LolChampions::VERSION
  spec.authors       = ["Kunal"]
  spec.email         = ["kdshah6593@gmail.com"]

  spec.summary       = %q{League of Legends Champion Finder}
  spec.description   = %q{Find and learn about different League of Legends Champions}
  spec.homepage      = "https://github.com/kdshah6593/League_of_Legends_Champions"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/kdshah6593/League_of_Legends_Champions"
  spec.metadata["changelog_uri"] = "https://github.com/kdshah6593/League_of_Legends_Champions"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "pry"

  spec.add_dependency "httparty"
end
