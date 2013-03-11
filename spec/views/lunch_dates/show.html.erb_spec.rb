require 'spec_helper'

describe "lunch_dates/show" do
  before(:each) do
    @lunch_date = assign(:lunch_date, stub_model(LunchDate))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
