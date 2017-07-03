require 'rails_helper'

RSpec.describe "Events", type: :request do
  describe "GET /events" do
    let!(:events) { ["Dam Vinh Hung's concert", "Scorpion in Vietnam"].map do |name|
        create(:event, :in_the_future, name: name) 
      end
    }
    it "accepts search on the homepage" do
      get root_path(search: "Scorpion")
      expect(response).to have_http_status(200)
      expect(response.body).to include "Scorpion in Vietnam"
      expect(response.body).to_not include "Dam Vinh Hung"
    end
  end
end