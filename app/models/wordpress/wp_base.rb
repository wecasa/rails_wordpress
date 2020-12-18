module Wordpress
  class WpBase < ActiveRecord::Base
    self.abstract_class = true

    def self.prefix_table_name table_name
      prefix = if Rails::VERSION::MAJOR >= 6 && Rails::VERSION::MINOR >= 1
                 connection_db_config.configuration_hash[:prefix]
               else
                 connection_config[:prefix]
               end
      prefix ||= 'wp'
      "#{prefix}_#{table_name}"
    end
  end
end
