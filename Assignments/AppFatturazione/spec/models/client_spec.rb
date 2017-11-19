require 'rails_helper'

RSpec.describe Client, type: :model do

  #subject= described_class.new(name:"foo", codice_fiscale:"dsfsdfasf", email:"foo@bar.com", partita_iva: 12, user: User.new)
  subject= build(:client)
  describe "validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
    it "is not valid without a name" do
      subject.name=nil
      expect(subject).to_not be_valid
    end
    it "is not valid without an email" do
      subject.email=nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a codice fiscale" do
      subject.codice_fiscale=nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a partita iva" do
      subject.partita_iva=nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a user" do
      subject.user_id=nil
      expect(subject).to_not be_valid
    end
  end

  describe "Associations" do
    it "has many hours" do
      association=described_class.reflect_on_association(:hours)
      expect(association.macro).to eq :has_many
    end
    it "belongs to a client" do
      association=described_class.reflect_on_association(:user)
      expect(association.macro).to eq :belongs_to
    end
  end
end
