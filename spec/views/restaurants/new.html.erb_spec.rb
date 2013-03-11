require 'spec_helper'

describe "restaurants/new" do
  before(:each) do
    assign(:restaurant, stub_model(Restaurant,
      :cust_id => 1,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new restaurant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => restaurants_path, :method => "post" do
      assert_select "input#restaurant_cust_id", :name => "restaurant[cust_id]"
      assert_select "input#restaurant_name", :name => "restaurant[name]"
    end
  end
end
