require_relative 'lib/with_last/version'

Gem::Specification.new do |spec|
  spec.name          = "with_last"
  spec.version       = WithLast::VERSION
  spec.authors       = ["oieioi"]
  spec.email         = ["atsuinatsu.samuifuyu@gmail.com"]

  spec.summary       = %q{Add `with_last` to Array}
  spec.description   = %q{Add `with_last` to Array}
  spec.homepage      = "https://github.com/oieioi/with_last.rb"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/oieioi/with_last.rb"
  spec.metadata["changelog_uri"] = "https://github.com/oieioi/with_last.rb"
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ["lib"]
end
