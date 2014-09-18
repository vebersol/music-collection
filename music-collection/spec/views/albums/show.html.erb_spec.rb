require 'rails_helper'

RSpec.describe "albums/show", :type => :view do
  before(:each) do
    artist = Artist.create(name: "Artist", country: "Artist Country")
    @album = assign(:album, Album.create!(
      :title => "Title",
      :description => "MyText",
      :cover => "Cover",
      :artist_id => artist.id,
      :genre => "Genre"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Cover/)
    expect(rendered).to match(/Artist/)
    expect(rendered).to match(/Genre/)
  end
end
