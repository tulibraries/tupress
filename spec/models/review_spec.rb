require 'rails_helper'

RSpec.describe Review, type: :model do 
  describe "associations" do 
    it "belongs to book" do 
      assc = described_class.reflect_on_association(:book)
      expect(assc.macro).to eq :belongs_to
    end 
  end
end