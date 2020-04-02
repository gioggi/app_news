require 'rails_helper'

RSpec.describe User, type: :model do
# spec/models/auction_spec.rb

  subject {
    described_class.new(first_name: "Mario",
                        last_name: "Rossi",
                        email: "test@test.it",
                        password: 'Pwd2312'
    )
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a first_name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a last_name" do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a password" do
    subject.password = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with an email already used " do
    email = create(:user).email
    subject.email = email
    expect(subject).to_not be_valid
  end
end
