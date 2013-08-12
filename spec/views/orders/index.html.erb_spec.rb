require 'spec_helper'

describe "orders/index" do
  before(:each) do
    assign(:orders, [
      stub_model(Order,
        :client_id => 1,
        :autoship => false,
        :send_styleguide => false,
        :shipping_type => "Shipping Type",
        :special_instructions => "MyText",
        :stylist_id => 2
      ),
      stub_model(Order,
        :client_id => 1,
        :autoship => false,
        :send_styleguide => false,
        :shipping_type => "Shipping Type",
        :special_instructions => "MyText",
        :stylist_id => 2
      )
    ])
  end

  it "renders a list of orders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Shipping Type".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
