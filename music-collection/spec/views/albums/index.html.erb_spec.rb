require 'rails_helper'

RSpec.describe "albums/index", :type => :view do
  before(:each) do
    assign(:albums, [
      Album.create!(
        :title => "Title",
        :description => "MyText",
        :cover => "Cover",
        :artist => "Artist",
        :genre => "Genre"
      ),
      Album.create!(
        :title => "Title",
        :description => "MyText",
        :cover => "Cover",
        :artist => "Artist",
        :genre => "Genre"
      )
    ])
  end

  it "renders a list of albums" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Cover".to_s, :count => 2
    assert_select "tr>td", :text => "Artist".to_s, :count => 2
    assert_select "tr>td", :text => "Genre".to_s, :count => 2
  end
end
