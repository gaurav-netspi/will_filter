Dir["#{File.dirname(__FILE__)}/helpers/**/*.rb"].each { |f| require f }
if defined?(WillPaginate)
  require 'will_paginate/array'
  ActiveSupport.on_load :active_record do
    module WillPaginate
      module ActiveRecord
        module RelationMethods
          alias_method :per, :per_page
          alias_method :num_pages, :total_pages
          alias_method :total_count, :count
        end
      end
    end
  end
end