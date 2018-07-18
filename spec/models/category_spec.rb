require "rails_helper"

RSpec.describe Category, type: :model do
  describe "db schema" do
    context "columns" do
      it { should have_db_column(:name).of_type :string }
      it { should have_db_column(:created_at).of_type :datetime }
      it { should have_db_column(:updated_at).of_type :datetime }
    end
  end

  describe "validations" do
    it { should validate_presence_of :name }
  end

  describe "associations" do
    it { should have_many :products }
  end
end
