require 'spec_helper'

describe "lunch_date_participants/new" do
  before(:each) do
    assign(:lunch_date_participant, stub_model(LunchDateParticipant,
      :lunch_date_id => 1,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new lunch_date_participant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lunch_date_participants_path, :method => "post" do
      assert_select "input#lunch_date_participant_lunch_date_id", :name => "lunch_date_participant[lunch_date_id]"
      assert_select "input#lunch_date_participant_user_id", :name => "lunch_date_participant[user_id]"
    end
  end
end
