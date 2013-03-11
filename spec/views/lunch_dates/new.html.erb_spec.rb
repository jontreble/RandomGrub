require 'spec_helper'

describe "lunch_dates/new" do
  before(:each) do
    assign(:lunch_date, stub_model(LunchDate).as_new_record)
  end

  it "renders new lunch_date form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lunch_dates_path, :method => "post" do
    end
  end
end
