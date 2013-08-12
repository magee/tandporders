require 'spec_helper'

describe "clients/index" do
  before(:each) do
    assign(:clients, [
      stub_model(Client,
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :address_ship => "Address Ship",
        :address_city => "Address City",
        :address_state => "Address State",
        :address_zip => "Address Zip",
        :username_skype => "Username Skype",
        :stylist_id => 1,
        :pinterest_board => "Pinterest Board",
        :budget => 2,
        :spend_tops => 3,
        :spend_pants => 4,
        :height => "Height",
        :bust => "9.99",
        :waist_natural => "9.99",
        :hips => "9.99",
        :size_top => "Size Top",
        :size_pant => "Size Pant",
        :size_shoe => "Size Shoe",
        :style_icon_id => 5,
        :style_icon_other => "Style Icon Other",
        :other_info => "MyText",
        :referral_source => "Referral Source",
        :avoid => "MyText",
        :shape => "Shape",
        :referred_by => "Referred By"
      ),
      stub_model(Client,
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :address_ship => "Address Ship",
        :address_city => "Address City",
        :address_state => "Address State",
        :address_zip => "Address Zip",
        :username_skype => "Username Skype",
        :stylist_id => 1,
        :pinterest_board => "Pinterest Board",
        :budget => 2,
        :spend_tops => 3,
        :spend_pants => 4,
        :height => "Height",
        :bust => "9.99",
        :waist_natural => "9.99",
        :hips => "9.99",
        :size_top => "Size Top",
        :size_pant => "Size Pant",
        :size_shoe => "Size Shoe",
        :style_icon_id => 5,
        :style_icon_other => "Style Icon Other",
        :other_info => "MyText",
        :referral_source => "Referral Source",
        :avoid => "MyText",
        :shape => "Shape",
        :referred_by => "Referred By"
      )
    ])
  end

  it "renders a list of clients" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Address Ship".to_s, :count => 2
    assert_select "tr>td", :text => "Address City".to_s, :count => 2
    assert_select "tr>td", :text => "Address State".to_s, :count => 2
    assert_select "tr>td", :text => "Address Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Username Skype".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Pinterest Board".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Height".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Size Top".to_s, :count => 2
    assert_select "tr>td", :text => "Size Pant".to_s, :count => 2
    assert_select "tr>td", :text => "Size Shoe".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "Style Icon Other".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Referral Source".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Shape".to_s, :count => 2
    assert_select "tr>td", :text => "Referred By".to_s, :count => 2
  end
end
