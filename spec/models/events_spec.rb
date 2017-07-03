# spec/models/event_spec.rb
require 'rails_helper'

RSpec.describe Event, type: :model do
  describe ".upcoming" do
    subject(:events) { Event.upcoming }
    it "return [] when there are no events" do 
      expect(events).to be_empty
    end
    context do
      let!(:event_a) { create(:event, :in_the_past, :published, name: "a") }
      it "return [] when there are only past events" do
        expect(events).to be_empty
      end
    end
    context do
      let!(:event_a) { create(:event, :in_the_past, :published, name: "a") }
      let!(:event_b) { create(:event, :in_the_future, :published, name: "b") }
      it "return [b] when there are a past event 'a' and a future event 'b'" do
        expect(events).to_not be_empty
        expect(events.first).to eq event_b
      end
    end 
  end
end