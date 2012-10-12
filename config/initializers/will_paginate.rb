Dir["#{File.dirname(__FILE__)}/helpers/**/*.rb"].each { |f| require f }
if defined?(WillPaginate)
  require 'will_paginate/array'
  module WillPaginate
    module ActiveRecord
      module RelationMethods
        alias_method :per, :per_page
        alias_method :num_pages, :total_pages
      end
    end
  end
end