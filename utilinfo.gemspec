
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "utilinfo"
require "utilinfo/version"

Gem::Specification.new do |spec|
  spec.name          = "utilinfo"
  spec.version       = Utilinfo::UtilinfoVersion::VERSION
  spec.authors       = ["Arun Sahadeo"]
  spec.email         = ["arunjamessahadeo@gmail.com"]

  spec.summary       = %q{Fetch system information from your machine.}
  spec.homepage      = "https://github.com/ArunSahadeo/utilinfo"
  spec.license       = "GPL"

  #spec.files         = `git ls-files -z`.split("\x0").reject do |f|
  #  f.match(%r{^(test|spec|features)/})
  #end
  spec.files		 = Dir['lib/**/*.rb']
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
