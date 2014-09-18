require 'rails_helper'

RSpec.describe Album, :type => :model do

  let(:valid_attributes) {
    {
      title: "Album title",
      description: "Album description",
      released: "1999-01-31",
      artist_id: 1,
      genre: "Heavy Metal"
    }
  }

  let(:invalid_attributes) {
    {
      title: "",
      description: "Album description",
      released: "1999-01-31",
      artist_id: nil,
      genre: "Heavy Metal"
    }
  }

  it "doesnt has any album" do
    expect(Album.count).to eq 0
  end

  it "has one after adding" do
    album = Album.create(valid_attributes)

    expect(Album.count).to eq 1
  end

  it "doesnt add if has something required" do
    album = Album.create(invalid_attributes)

    expect(Album.count).to eq 0
  end

end
