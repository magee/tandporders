require 'spec_helper'

describe "order_items/new" do
  before(:each) do
    assign(:order_item, stub_model(OrderItem,
      :category_id => 1,
      :color => "MyString",
      :description => "MyString",
      :quantity => 1,
      :unit_price => "9.99",
      :price => "9.99"
    ).as_new_record)
  end

  it "renders new order_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", order_items_path, "post" do
      assert_select "input#order_item_category_id[name=?]", "order_item[category_id]"
      assert_select "input#order_item_color[name=?]", "order_item[color]"
      assert_select "input#order_item_description[name=?]", "order_item[description]"
      assert_select "input#order_item_quantity[name=?]", "order_item[quantity]"
      assert_select "input#order_item_unit_price[name=?]", "order_item[unit_price]"
      assert_select "input#order_item_price[name=?]", "order_item[price]"
    end
  end
end
