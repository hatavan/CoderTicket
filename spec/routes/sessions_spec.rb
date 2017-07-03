# spec/routes/sessions_spec.rb
require 'rails_helper'

RSpec.describe "sessions", type: :routing do
  it "routes /login to sessions#new" do
    expect(get: "/login").to route_to(controller: "sessions", action: "new")
  end
  it "routes /logout to sessions#destroy" do
    expect(delete: "/logout").to route_to(controller: "sessions", action: "destroy")
  end
end