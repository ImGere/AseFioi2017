require 'rails_helper'

RSpec.describe Hour, type: :model do
  subject=described_class.new(date:Date.today, start_time:Time.now, end_time:Time.now, description:"this", user:User.first, client:Client.first, is_fatturata:false)

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
    it "is not valid without a date" do
      subject.date=nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a starting time" do
      subject.start_time=nil
      expect(subject).to_not be_valid
    end
    it "is not valid without an ending time" do
      subject.end_time=nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a description" do
      subject.description=nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a user" do
      subject.user_id=nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a client" do
      subject.client_id=nil
      expect(subject).to_not be_valid
    end
  end

  describe "Associations" do
    it "belongs to a user" do
      association= described_class.reflect_on_association(:user)
      expect(association.macro).to eq :belongs_to
    end
    it "belongs to a client" do
      association= described_class.reflect_on_association(:client)
      expect(association.macro).to eq :belongs_to
    end
  end

end
