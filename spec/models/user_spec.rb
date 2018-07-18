require "rails_helper"

RSpec.describe User, type: :model do
  describe "db schema" do
    context "columns" do
      it { should have_db_column(:name).of_type :string }
      it { should have_db_column(:email).of_type :string }
      it { should have_db_column(:avatar).of_type :string }
      it { should have_db_column(:phone_number).of_type :string }
      it { should have_db_column(:address).of_type :string }
      it { should have_db_column(:role).of_type :integer }
      it { should have_db_column(:created_at).of_type :datetime }
      it { should have_db_column(:updated_at).of_type :datetime }
      it { should have_db_column(:encrypted_password).of_type :string }
      it { should have_db_column(:reset_password_token).of_type :string }
      it { should have_db_column(:reset_password_sent_at).of_type :datetime }
      it { should have_db_column(:remember_created_at).of_type :datetime }
      it { should have_db_column(:sign_in_count).of_type :integer }
      it { should have_db_column(:current_sign_in_at).of_type :datetime }
      it { should have_db_column(:last_sign_in_at).of_type :datetime }
      it { should have_db_column(:current_sign_in_ip).of_type :string }
      it { should have_db_column(:last_sign_in_ip).of_type :string }
      it { should have_db_column(:AddProdiverToUser).of_type :string }
      it { should have_db_column(:uid).of_type :string }
      it { should have_db_column(:provider).of_type :integer }
    end
  end

  describe "associations" do
    it { should have_many :ratings }
    it { should have_many :orders }
    it { should have_many :product_temps }
  end
end
