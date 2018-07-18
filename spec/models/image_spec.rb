require "rails_helper"

RSpec.describe Image, type: :model do

  describe "db schema" do
    context "columns" do
      it { should have_db_column(:product_id).of_type :integer }
      it { should have_db_column(:image_link).of_type :text }
      it { should have_db_column(:created_at).of_type :datetime }
      it { should have_db_column(:updated_at).of_type :datetime }
    end
  end

  describe "associations" do
    it { should belong_to :product }
  end
end
