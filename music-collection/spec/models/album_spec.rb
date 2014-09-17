require 'rails_helper'

RSpec.describe Album, :type => :model do

  it "doesnt has any album" do
    expect(Album.count).to eq 0
  end

  it "has one after adding" do
    album = Album.create(title: "My Album", description: "Album Description",
      released: "2010-01-05", artist: "Lorem", genre: "Blues")

    expect(Album.count).to eq 1
  end

  it "doesnt add if has something required" do
    album = Album.create

    expect(Album.count).to eq 0
  end

end
