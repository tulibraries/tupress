require 'rails_helper'

RSpec.describe Book, type: :model do 
  describe "associations" do 
    it "has many book" do 
      assc = described_class.reflect_on_association(:reviews)
      expect(assc.macro).to eq :has_many
    end 
  end
end