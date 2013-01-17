require_dependency "rails_status/application_controller"

module RailsStatus
  class StatusController < ApplicationController
    def show
      @date = RailsStatus::Determiner.date
      @rails_status = RailsStatus::Determiner.rails
      @active_record_status = RailsStatus::Determiner.active_record
    end
  end
end
