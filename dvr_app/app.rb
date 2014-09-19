require './helpers/application_helper'
require './application_controller'

class App < ApplicationController
    extend ApplicationHelper
    include ApplicationHelper

  ########################
  # Routes
  ########################

  get('/') do
    @test_text = test_config
    render(:erb, :index)
  end
end
