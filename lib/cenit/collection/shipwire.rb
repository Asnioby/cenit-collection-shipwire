require "cenit/collection/shipwire/version"

module Cenit
  module Collection
    require "cenit/collection/shipwire/build"
    require "cenit/client"

    # bundle exec irb -I lib -r 'cenit/collection/shipwire'
    # config = {:push_url => "https://www.cenithub.com/api/v1/push", :connection_token => "My Conn Token", :connection_key => "My Conn Key"}
    # config = {:push_url => "https://www.cenithub.com/api/v1/push", :user_token => "My User Token", :user_key => "My User Key"}
    # Cenit::Collection::Shipwire.push_collection config
    # Cenit::Collection::Shipwire.shared_collection

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
      Cenit::Client.push(@shipwire.sample_data(model).to_json, config)
    end
  end
end