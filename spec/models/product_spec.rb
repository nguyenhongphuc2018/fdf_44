require "rails_helper"

RSpec.describe Product, type: :model do
    
  describe "db schema" do
    context "columns" do
      it { should have_db_column(:name).of_type :string }
      it { should have_db_column(:price).of_type :float }
      it { should have_db_column(:descriptions).of_type :text }
      it { should have_db_column(:category_id).of_type :integer }
      it { should have_db_column(:average_point).of_type :integer }
      it { should have_db_column(:created_at).of_type :datetime }
      it { should have_db_column(:updated_at).of_type :datetime }
    end
  end

  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :price }
    it { should validate_presence_of :descriptions }
  end

  describe "associations" do
    it { should belong_to :category }
    it { should have_many :ratings }
    it { should have_many :images }
    it { should have_many :order_details }
  end
end
