require 'spec_helper'

describe "lunch_dates/edit" do
  before(:each) do
    @lunch_date = assign(:lunch_date, stub_model(LunchDate))
  end

  it "renders the edit lunch_date form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lunch_dates_path(@lunch_date), :method => "post" do
    end
  end
end
