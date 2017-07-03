require 'rails_helper'

RSpec.describe "events/index", type: :view do
  it "renders Discover upcoming events in a header tag" do
    assign(:events, [])
    render
    # if you want to see the whole rendered text, use 'puts rendered'
    expect(rendered).to include("<h2>Discover upcoming events</h2>")
  end
  context do
    let!(:event) {create(:event, :in_the_future, :published, name: 'Michael Jackson')}
    it "Display an event title" do
      assign(:events, [event])
      render
      expect(rendered).to include('<h4 class="card-title">Michael Jackson</h4>')
    end
  end
end