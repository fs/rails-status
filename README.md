# Rails Status

Display Rails status page on /rails-status
which could be used to check app health with Pingdom.

# Install

* Add `gem 'rails-status'` to your Rails `Gemfile`
* Add `mount RailsStatus::Engine => '/rails-status'` to `config/routes.rb`
* Point Pingdom to `http://example.com/rails-status`

Correct response should be:

    Date: 2013-01-17 14:04:22 +0400
    Rails: OK
    ActiveRecord: OK


# License

This project rocks and uses MIT-LICENSE.