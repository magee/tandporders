require 'spec_helper'

describe "order_items/index" do
  before(:each) do
    assign(:order_items, [
      stub_model(OrderItem,
        :category_id => 1,
        :color => "Color",
        :description => "Description",
        :quantity => 2,
        :unit_price => "9.99",
        :price => "9.99"
      ),
      stub_model(OrderItem,
        :category_id => 1,
        :color => "Color",
        :description => "Description",
        :quantity => 2,
        :unit_price => "9.99",
        :price => "9.99"
      )
    ])
  end

  it "renders a list of order_items" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
