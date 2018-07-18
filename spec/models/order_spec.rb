require "rails_helper"

RSpec.describe Order, type: :model do
  describe "db schema" do
    context "columns" do
      it { should have_db_column(:user_id).of_type :integer }
      it { should have_db_column(:status).of_type :integer }
      it { should have_db_column(:phone).of_type :string }
      it { should have_db_column(:address).of_type :text }
      it { should have_db_column(:created_at).of_type :datetime }
      it { should have_db_column(:updated_at).of_type :datetime }
    end
  end

  describe "validations" do
    it { should validate_presence_of :address }
    it { should validate_presence_of :phone }
  end

  describe "associations" do
    it { should belong_to :user }
    it { should have_many :order_details }
  end
end
