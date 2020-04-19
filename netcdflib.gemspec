
Gem::Specification::new do |s|
  version = "1.0.0"

  files = Dir.glob("**/*") - [ 
                               Dir.glob("netcdflib-*.gem"), 
                               Dir.glob("doc/**/*"), 
                             ].flatten

  s.platform    = Gem::Platform::RUBY
  s.name        = "netcdflib"
  s.summary     = "Extension for manipulating NetCDF3 file with CArray"
  s.description = <<-HERE
    Extension for manipulating NetCDF3 file with CArray
  HERE
  s.version     = version
  s.author      = "Hiroki Motoyoshi"
  s.email       = ""
  s.homepage    = 'https://github.com/himotoyoshi/netcdflib'
  s.files       = files
  s.extensions  = [ "ext/extconf.rb" ]
  s.required_ruby_version = ">= 1.8.1"
end
