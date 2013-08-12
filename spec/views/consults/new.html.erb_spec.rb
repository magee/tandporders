require 'spec_helper'

describe "consults/new" do
  before(:each) do
    assign(:consult, stub_model(Consult,
      :stylist_id => 1,
      :client_id => 1,
      :order_id => 1,
      :state => 1
    ).as_new_record)
  end

  it "renders new consult form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", consults_path, "post" do
      assert_select "input#consult_stylist_id[name=?]", "consult[stylist_id]"
      assert_select "input#consult_client_id[name=?]", "consult[client_id]"
      assert_select "input#consult_order_id[name=?]", "consult[order_id]"
      assert_select "input#consult_state[name=?]", "consult[state]"
    end
  end
end
