require 'rails_helper'

RSpec.describe "albums/new", :type => :view do
  before(:each) do
    assign(:album, Album.new(
      :title => "MyString",
      :description => "MyText",
      :cover => "MyString",
      :artist => "MyString",
      :genre => "MyString"
    ))
  end

  it "renders new album form" do
    render

    assert_select "form[action=?][method=?]", albums_path, "post" do

      assert_select "input#album_title[name=?]", "album[title]"

      assert_select "textarea#album_description[name=?]", "album[description]"

      assert_select "input#album_cover[name=?]", "album[cover]"

      assert_select "input#album_artist[name=?]", "album[artist]"

      assert_select "input#album_genre[name=?]", "album[genre]"
    end
  end
end
