require 'spec_helper'

describe "orders/edit" do
  before(:each) do
    @order = assign(:order, stub_model(Order,
      :client_id => 1,
      :autoship => false,
      :send_styleguide => false,
      :shipping_type => "MyString",
      :special_instructions => "MyText",
      :stylist_id => 1
    ))
  end

  it "renders the edit order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", order_path(@order), "post" do
      assert_select "input#order_client_id[name=?]", "order[client_id]"
      assert_select "input#order_autoship[name=?]", "order[autoship]"
      assert_select "input#order_send_styleguide[name=?]", "order[send_styleguide]"
      assert_select "input#order_shipping_type[name=?]", "order[shipping_type]"
      assert_select "textarea#order_special_instructions[name=?]", "order[special_instructions]"
      assert_select "input#order_stylist_id[name=?]", "order[stylist_id]"
    end
  end
end
