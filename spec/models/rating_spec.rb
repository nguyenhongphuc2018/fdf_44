require "rails_helper"

RSpec.describe Rating, type: :model do
    
  describe "db schema" do
    context "columns" do
      it { should have_db_column(:product_id).of_type :integer }
      it { should have_db_column(:user_id).of_type :integer }
      it { should have_db_column(:point).of_type :integer }     
      it { should have_db_column(:created_at).of_type :datetime }
      it { should have_db_column(:updated_at).of_type :datetime }
    end
  end

  describe "validations" do
    it { should validate_presence_of :point }
    it { should validate_length_of :point }
  end

  describe "associations" do
    it { should belong_to :product }
    it { should belong_to :user }
  end
end
