require 'spec_helper'

describe "matches/index" do
  before(:each) do
    assign(:matches, [
      stub_model(Match,
        :date_id => 1,
        :user1_id => 2,
        :user2_id => 3,
        :restaurant_id => 4,
        :groupnoms_link => "Groupnoms Link"
      ),
      stub_model(Match,
        :date_id => 1,
        :user1_id => 2,
        :user2_id => 3,
        :restaurant_id => 4,
        :groupnoms_link => "Groupnoms Link"
      )
    ])
  end

  it "renders a list of matches" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Groupnoms Link".to_s, :count => 2
  end
end
