require 'spec_helper'

describe "matches/new" do
  before(:each) do
    assign(:match, stub_model(Match,
      :date_id => 1,
      :user1_id => 1,
      :user2_id => 1,
      :restaurant_id => 1,
      :groupnoms_link => "MyString"
    ).as_new_record)
  end

  it "renders new match form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => matches_path, :method => "post" do
      assert_select "input#match_date_id", :name => "match[date_id]"
      assert_select "input#match_user1_id", :name => "match[user1_id]"
      assert_select "input#match_user2_id", :name => "match[user2_id]"
      assert_select "input#match_restaurant_id", :name => "match[restaurant_id]"
      assert_select "input#match_groupnoms_link", :name => "match[groupnoms_link]"
    end
  end
end
