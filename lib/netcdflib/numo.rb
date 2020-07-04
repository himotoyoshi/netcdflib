require "netcdflib"
require "carray-numo-narray"

module NC
  
  module Numo
    include NC
    extend NC
    
    module_function
    
    def nc_create (*args)
      p "hello"
      super(*args)
    end
    
    
  end

end

NC = NC::Numo