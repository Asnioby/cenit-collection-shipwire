module Cenit
  module Collection
    require File.expand_path(File.join(*%w[ shipwire build ]), File.dirname(__FILE__))
    require "cenit/client"

    @shipwire = Cenit::Collection::Shipwire::Build.new

    # Include Collection Gem dependency
    # require "cenit/collection/[My Dependency Collection]/build"
    # Collection dependency
    # @shipwire.register_dep(Cenit::Collection::[My Dependency Collection]::Build.new)

    def self.push_collection (config)
      Cenit::Client.push(@shipwire.shared_collection.to_json, config)
    end

    def self.show_collection
      @shipwire.shared_collection
    end

    def self.pull_collection (parameters,config)
      @shipwire.shared_collection
    end

    def self.push_sample(model, config)
      Cenit::Client.push(@shipwire.sample_model(model).to_json, config)
    end

    def self.import(data)
      @shipwire.import_data(data)
    end
  end
end