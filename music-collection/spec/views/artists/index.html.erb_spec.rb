require 'rails_helper'

RSpec.describe "artists/index", :type => :view do
  before(:each) do
    assign(:artists, [
      Artist.create!(
        :name => "Name",
        :country => "Country",
        :picture => "Picture"
      ),
      Artist.create!(
        :name => "Name",
        :country => "Country",
        :picture => "Picture"
      )
    ])
  end

  it "renders a list of artists" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Picture".to_s, :count => 2
  end
end
