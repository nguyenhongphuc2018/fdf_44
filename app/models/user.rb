class User < ApplicationRecord
  has_many :ratings, dependent: :destroy
  has_many :favourites, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :product_temps

  enum role: [:member, :admin]

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable,
    :omniauthable, :omniauth_providers => [:facebook]

  def self.new_with_session params, session
    super.tap do |user|
      if data = session["devise.facebook_data"] &&
        session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  def self.from_omniauth auth
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[Settings.user.password_min,Settings.user.password_min]
      user.name = auth.info.name
    end
  end
end
