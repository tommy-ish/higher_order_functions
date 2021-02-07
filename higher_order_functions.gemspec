# frozen_string_literal: true

require_relative "lib/higher_order_functions/version"
Gem::Specification.new do |spec|
  spec.name          = "higher_order_functions"
  spec.version       = HigherOrderFunctions::VERSION
  spec.authors       = ["Tomohiro Ishii"]
  spec.email         = ["tommy.ish@icloud.com"]
  spec.summary       = "Higher-order functions"
  spec.description   = "Higher-order functions"
  spec.homepage      = "https://github.com/tommy-ish/higher_order_functions"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/tommy-ish/higher_order_functions"
  spec.metadata["changelog_uri"] = "https://github.com/tommy-ish/higher_order_functions/blob/main/CHANGELOG.md"
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
