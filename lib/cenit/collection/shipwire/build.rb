require 'cenit/collection/shipwire/version'
require 'cenit/collection/base/build'

module Cenit
  module Collection
    module Shipwire
      class Build < Cenit::Collection::Base::Build
        def initialize
          super(__dir__)
        end
      end
    end
  end
end