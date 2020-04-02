require 'rails_helper'

RSpec.describe Article, type: :model do
  subject {
    described_class.new(title: "Lorem ipsum",
                        text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
                        user: create(:user)
    )
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a title" do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without text" do
    subject.text = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a user" do
    subject.user = nil
    expect(subject).to_not be_valid
  end
end
