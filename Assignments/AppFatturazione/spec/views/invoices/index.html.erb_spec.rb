require 'rails_helper'

RSpec.describe "invoices/index", type: :view do
  before(:each) do
    assign(:invoices, [
      Invoice.create!(
        :hour_id => ""
      ),
      Invoice.create!(
        :hour_id => ""
      )
    ])
  end

  it "renders a list of invoices" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
