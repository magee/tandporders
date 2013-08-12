require 'spec_helper'

describe "clients/new" do
  before(:each) do
    assign(:client, stub_model(Client,
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :address_ship => "MyString",
      :address_city => "MyString",
      :address_state => "MyString",
      :address_zip => "MyString",
      :username_skype => "MyString",
      :stylist_id => 1,
      :pinterest_board => "MyString",
      :budget => 1,
      :spend_tops => 1,
      :spend_pants => 1,
      :height => "MyString",
      :bust => "9.99",
      :waist_natural => "9.99",
      :hips => "9.99",
      :size_top => "MyString",
      :size_pant => "MyString",
      :size_shoe => "MyString",
      :style_icon_id => 1,
      :style_icon_other => "MyString",
      :other_info => "MyText",
      :referral_source => "MyString",
      :avoid => "MyText",
      :shape => "MyString",
      :referred_by => "MyString"
    ).as_new_record)
  end

  it "renders new client form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", clients_path, "post" do
      assert_select "input#client_first_name[name=?]", "client[first_name]"
      assert_select "input#client_last_name[name=?]", "client[last_name]"
      assert_select "input#client_email[name=?]", "client[email]"
      assert_select "input#client_address_ship[name=?]", "client[address_ship]"
      assert_select "input#client_address_city[name=?]", "client[address_city]"
      assert_select "input#client_address_state[name=?]", "client[address_state]"
      assert_select "input#client_address_zip[name=?]", "client[address_zip]"
      assert_select "input#client_username_skype[name=?]", "client[username_skype]"
      assert_select "input#client_stylist_id[name=?]", "client[stylist_id]"
      assert_select "input#client_pinterest_board[name=?]", "client[pinterest_board]"
      assert_select "input#client_budget[name=?]", "client[budget]"
      assert_select "input#client_spend_tops[name=?]", "client[spend_tops]"
      assert_select "input#client_spend_pants[name=?]", "client[spend_pants]"
      assert_select "input#client_height[name=?]", "client[height]"
      assert_select "input#client_bust[name=?]", "client[bust]"
      assert_select "input#client_waist_natural[name=?]", "client[waist_natural]"
      assert_select "input#client_hips[name=?]", "client[hips]"
      assert_select "input#client_size_top[name=?]", "client[size_top]"
      assert_select "input#client_size_pant[name=?]", "client[size_pant]"
      assert_select "input#client_size_shoe[name=?]", "client[size_shoe]"
      assert_select "input#client_style_icon_id[name=?]", "client[style_icon_id]"
      assert_select "input#client_style_icon_other[name=?]", "client[style_icon_other]"
      assert_select "textarea#client_other_info[name=?]", "client[other_info]"
      assert_select "input#client_referral_source[name=?]", "client[referral_source]"
      assert_select "textarea#client_avoid[name=?]", "client[avoid]"
      assert_select "input#client_shape[name=?]", "client[shape]"
      assert_select "input#client_referred_by[name=?]", "client[referred_by]"
    end
  end
end
