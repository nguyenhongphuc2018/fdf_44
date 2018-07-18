require "rails_helper"

RSpec.describe ProductTemp, type: :model do
    
  describe "db schema" do
    context "columns" do
      it { should have_db_column(:name).of_type :string }
      it { should have_db_column(:price).of_type :float }
      it { should have_db_column(:descriptions).of_type :text }
      it { should have_db_column(:category_id).of_type :integer }
      it { should have_db_column(:user_id).of_type :integer }
      it { should have_db_column(:status).of_type :integer }
      it { should have_db_column(:created_at).of_type :datetime }
      it { should have_db_column(:updated_at).of_type :datetime }
    end
  end

  describe "associations" do
    it { should belong_to :category }
    it { should belong_to :user }
  end
end
