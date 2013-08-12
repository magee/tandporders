require 'spec_helper'

describe "orders/show" do
  before(:each) do
    @order = assign(:order, stub_model(Order,
      :client_id => 1,
      :autoship => false,
      :send_styleguide => false,
      :shipping_type => "Shipping Type",
      :special_instructions => "MyText",
      :stylist_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/Shipping Type/)
    rendered.should match(/MyText/)
    rendered.should match(/2/)
  end
end
