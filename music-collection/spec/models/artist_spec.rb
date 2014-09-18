require 'rails_helper'

RSpec.describe Artist, :type => :model do
  let(:valid_attributes) {
    {
      name: "MyString",
      country: "MyString",
      picture: "MyString"
    }
  }

  let(:invalid_attributes) {
    {
      name: "",
      country: "",
      picture: ""
    }
  }

  it "doesnt has any artist" do
    expect(Artist.count).to eq 0
  end

  it "has one after adding" do
    album = Artist.create(valid_attributes)

    expect(Artist.count).to eq 1
  end

  it "doesnt add if has something required" do
    Artist.create(invalid_attributes)

    expect(Artist.count).to eq 0
  end
end
