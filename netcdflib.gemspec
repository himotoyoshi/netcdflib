
Gem::Specification::new do |s|
  version = "0.9.0"

  files = Dir.glob("**/*") - [ 
                               Dir.glob("netcdflib-*.gem"), 
                               Dir.glob("examples/**/*"), 
                               Dir.glob("doc/**/*"), 
                             ].flatten

  s.platform    = Gem::Platform::RUBY
  s.name        = "netcdflib"
  s.summary     = "Extension for manipulating NetCDF3 file"
  s.description = <<-HERE
    Extension for manipulating NetCDF3 file.
    Ruby/CArray is used for binary data passing.
    Formerly known as 'carray-netcdf'.
  HERE
  s.version     = version
  s.license    =  "MIT"
  s.author      = "Hiroki Motoyoshi"
  s.email       = ""
  s.homepage    = 'https://github.com/himotoyoshi/netcdflib'
  s.files       = files
  s.extensions  = [ "ext/extconf.rb" ]
  s.required_ruby_version = ">= 2.2.0"
  s.add_runtime_dependency 'carray', '~> 1.5', '>= 1.5.0'
end
