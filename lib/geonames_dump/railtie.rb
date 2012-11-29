#require 'rails'

module GeonamesDump
  class Railtie < ::Rails::Railtie #:nodoc:
    # import rake tast into rails application
    rake_tasks do
      Dir[File.join(File.dirname(__FILE__),'../tasks/*.rake')].each { |f| load f }
    end
  end
end

