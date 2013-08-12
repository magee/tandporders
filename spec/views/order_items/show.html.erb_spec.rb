require 'spec_helper'

describe "order_items/show" do
  before(:each) do
    @order_item = assign(:order_item, stub_model(OrderItem,
      :category_id => 1,
      :color => "Color",
      :description => "Description",
      :quantity => 2,
      :unit_price => "9.99",
      :price => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Color/)
    rendered.should match(/Description/)
    rendered.should match(/2/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
  end
end
