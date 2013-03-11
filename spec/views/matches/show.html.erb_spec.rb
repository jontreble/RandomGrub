require 'spec_helper'

describe "matches/show" do
  before(:each) do
    @match = assign(:match, stub_model(Match,
      :date_id => 1,
      :user1_id => 2,
      :user2_id => 3,
      :restaurant_id => 4,
      :groupnoms_link => "Groupnoms Link"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/Groupnoms Link/)
  end
end
