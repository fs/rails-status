require 'rails_status/engine'

module RailsStatus
  class Determiner
    class ActiveRecord
      def status
        return 'Not configured' unless enabled?
        return try_select
      end

      private

      def try_select
        ::ActiveRecord::Base.connection.select_all "SELECT 'test'"

        return 'OK'
      rescue => e
        return e.to_s
      end

      def enabled?
        ::Rails.configuration.generators.options[:rails][:orm] == :active_record
      end
    end

    class Rails
      def status
        'OK'
      end
    end

    def self.date
      Time.now
    end

    def self.rails
      Rails.new.status
    end

    def self.active_record
      ActiveRecord.new.status
    end
  end
end
