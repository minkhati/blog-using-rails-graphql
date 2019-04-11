# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

<!--
$ rails new Blogger --webpack=react
$ include the following gems in the gemfile
    gem 'graphql'
    gem "react_on_rails", "11.0.0"
    gem "webpacker", "~> 3.0"
    gem 'mini_racer', platforms: :ruby 
$ bundle install
$ bundle exec rails webpacker:install
$ bundle exec rails webpacker:install:react
    you should now see the following in our terminal:

    Webpacker now supports react.js
$ git add . && git commit -m "Add webpacker & react"
Add the react-dom and react_on_rails packages to our package.json by running:
$ yarn add react-dom react-on-rails

Now create config/initializers/react_on_rails.rb with the following content:
ReactOnRails.configure do |config|
  # This configures the script to run to build the production assets by webpack. Set this to nil
  # if you don't want react_on_rails building this file for you.
  config.build_production_command = "RAILS_ENV=production NODE_ENV=production bin/webpack"

  ################################################################################
  ################################################################################
  # TEST CONFIGURATION OPTIONS
  # Below options are used with the use of this test helper:
  # ReactOnRails::TestHelper.configure_rspec_to_compile_assets(config)
  ################################################################################

  # If you are using this in your spec_helper.rb (or rails_helper.rb):
  #
  # ReactOnRails::TestHelper.configure_rspec_to_compile_assets(config)
  #
  # with rspec then this controls what yarn command is run
  # to automatically refresh your webpack assets on every test run.
  #
  config.build_test_command = "RAILS_ENV=test bin/webpack"
  config.server_bundle_js_file = ""
end

$ rails g model Post title content
$ seed data
$ rails db:migrate && rails db:seed
$ Add file app/views/application/index.html.erb
$ define root path as root to: "application#index"
$ now run rails server in one terminal tab
$ and ./bin/webpack-dev-server in another terminal tab
$ now you can see the index view page loaded in the browser.
$ After that create React Components and GraphQL Mutations and Types etc.

-->
