require 'rails_helper'

RSpec.describe "artists/new", :type => :view do
  before(:each) do
    assign(:artist, Artist.new(
      :name => "MyString",
      :country => "MyString",
      :picture => "MyString"
    ))
  end

  it "renders new artist form" do
    render

    assert_select "form[action=?][method=?]", artists_path, "post" do

      assert_select "input#artist_name[name=?]", "artist[name]"

      assert_select "input#artist_country[name=?]", "artist[country]"

      assert_select "input#artist_picture[name=?]", "artist[picture]"
    end
  end
end
