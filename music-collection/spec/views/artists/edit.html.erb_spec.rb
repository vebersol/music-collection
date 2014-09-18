require 'rails_helper'

RSpec.describe "artists/edit", :type => :view do
  before(:each) do
    @artist = assign(:artist, Artist.create!(
      :name => "MyString",
      :country => "MyString",
      :picture => "MyString"
    ))
  end

  it "renders the edit artist form" do
    render

    assert_select "form[action=?][method=?]", artist_path(@artist), "post" do

      assert_select "input#artist_name[name=?]", "artist[name]"

      assert_select "input#artist_country[name=?]", "artist[country]"

      assert_select "input#artist_picture[name=?]", "artist[picture]"
    end
  end
end
