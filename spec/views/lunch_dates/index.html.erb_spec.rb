require 'spec_helper'

describe "lunch_dates/index" do
  before(:each) do
    assign(:lunch_dates, [
      stub_model(LunchDate),
      stub_model(LunchDate)
    ])
  end

  it "renders a list of lunch_dates" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
