require 'spec_helper'
require_relative '../app'

describe("index.erb") do
  it("exists and has a working path") do
    visit("/")
    expect(page).to have_content
  end
end

