require 'spec_helper'

describe "lunch_date_participants/show" do
  before(:each) do
    @lunch_date_participant = assign(:lunch_date_participant, stub_model(LunchDateParticipant,
      :lunch_date_id => 1,
      :user_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
