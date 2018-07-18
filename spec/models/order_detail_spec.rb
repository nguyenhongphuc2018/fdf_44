require "rails_helper"

RSpec.describe OrderDetail, type: :model do
  describe "db schema" do
    context "columns" do
      it { should have_db_column(:quantity).of_type :integer }
      it { should have_db_column(:price).of_type :float }
      it { should have_db_column(:order_id).of_type :integer }
      it { should have_db_column(:product_id).of_type :integer }
      it { should have_db_column(:created_at).of_type :datetime }
      it { should have_db_column(:updated_at).of_type :datetime }
    end
  end

  describe "validations" do
    it { should validate_presence_of :quantity }
    it { should validate_presence_of :product }
  end

  describe "associations" do
    it { should belong_to :order }
    it { should belong_to :product }
  end
end
