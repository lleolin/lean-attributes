lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'lean-attributes/version'

Gem::Specification.new do |s|
  s.name = 'lean-attributes'
  s.version = Lean::Attributes::VERSION

  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 1.9.3'
  s.rubygems_version = '>= 1.3.6'

  s.homepage = 'https://github.com/elliottmason/lean-attributes'
  s.authors = ['R. Elliott Mason']
  s.email = ['r.elliott.mason@fastmail.fm']
  s.summary = 'Lean attributes for Ruby classes'
  s.description = <<-DESC
lean-attributes allows you to define typed attributes for Ruby classes
DESC

  s.licenses = ['MIT']

  s.files = `git ls-files -z -- lib/* bin/* LICENSE.md README.md \
    CHANGELOG.md FEATURES.md lean-attributes.gemspec`.split("\x0")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.extra_rdoc_files = ['README.md']
  s.require_paths = ['lib']

  s.add_development_dependency 'rake',  '~> 13.0', '>= 10.3.2'
  s.add_development_dependency 'rspec', '~> 3.0',   '>= 3.0.0'
end
