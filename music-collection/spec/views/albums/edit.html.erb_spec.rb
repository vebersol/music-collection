require 'rails_helper'

RSpec.describe "albums/edit", :type => :view do
  before(:each) do
    @album = assign(:album, Album.create!(
      :title => "MyString",
      :description => "MyText",
      :cover => "MyString",
      :artist_id => 1,
      :genre => "MyString"
    ))
  end

  it "renders the edit album form" do
    render

    assert_select "form[action=?][method=?]", album_path(@album), "post" do

      assert_select "input#album_title[name=?]", "album[title]"

      assert_select "textarea#album_description[name=?]", "album[description]"

      assert_select "input#album_cover[name=?]", "album[cover]"

      assert_select "select#album_artist_id[name=?]", "album[artist_id]"

      assert_select "input#album_genre[name=?]", "album[genre]"
    end
  end
end
