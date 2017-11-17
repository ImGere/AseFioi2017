require 'rails_helper'

RSpec.describe User, type: :model do
  subject {described_class.new(name:"paolo", email:"this.coba@gmail.com", tarif:14, password:"foobar")}
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
      it "is not valid without a password" do
        subject.password=nil
        expect(subject).to_not be_valid
      end
      it "is not valid without a tarif" do
        subject.tarif=nil
        expect(subject).to_not be_valid
      end
    end

    describe "Associations" do
      it "has many clients" do
        association= described_class.reflect_on_association(:clients)
        expect(association.macro).to eq :has_many
      end
      it "has may hours" do
        association= described_class.reflect_on_association(:hours)
        expect(association.macro).to eq :has_many
      end
    end

end
