require 'spec_helper'

describe "consults/show" do
  before(:each) do
    @consult = assign(:consult, stub_model(Consult,
      :stylist_id => 1,
      :client_id => 2,
      :order_id => 3,
      :state => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
  end
end
