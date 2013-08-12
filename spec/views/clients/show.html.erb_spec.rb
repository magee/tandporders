require 'spec_helper'

describe "clients/show" do
  before(:each) do
    @client = assign(:client, stub_model(Client,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Email/)
    rendered.should match(/Address Ship/)
    rendered.should match(/Address City/)
    rendered.should match(/Address State/)
    rendered.should match(/Address Zip/)
    rendered.should match(/Username Skype/)
    rendered.should match(/1/)
    rendered.should match(/Pinterest Board/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/Height/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/Size Top/)
    rendered.should match(/Size Pant/)
    rendered.should match(/Size Shoe/)
    rendered.should match(/5/)
    rendered.should match(/Style Icon Other/)
    rendered.should match(/MyText/)
    rendered.should match(/Referral Source/)
    rendered.should match(/MyText/)
    rendered.should match(/Shape/)
    rendered.should match(/Referred By/)
  end
end
