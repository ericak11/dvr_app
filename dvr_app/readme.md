
# dvr_app"

###################################
# Setup Notes
###################################

erb folder structure:
views
- resource name
  - index.erb (lists entries)
  - new.erb (creates an entry)
  - edit.erb (edits and entry)
  - show.erb (shows one entry)

Use rubocop —lint (less scope for errors/offenses) for testing

bundle exec shotgun -p 3000 on localhost during devleopment to test




###################################
# To make capybara work
###################################

Manually add the following to your spec_helper.rb file to make the rspec test setup work.
I did not add this to the script out of
respect for the fact that I don't really
know what I am doing.

You should replace the default Rspec.configure
line with this text below, but do not
overwrite anything that seems to be
automatically generated:


require 'capybara/rspec'
require './app'

Capybara.app = App

# This configuration adds Capybara's functionality
# to the test.
RSpec.configure do |config|
  config.include Capybara::DSL

