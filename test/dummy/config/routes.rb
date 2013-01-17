Rails.application.routes.draw do
  mount RailsStatus::Engine => '/rails-status'
end
