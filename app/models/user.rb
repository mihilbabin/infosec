class User < ApplicationRecord
  MAX_ATTEMPTS = 7
  has_secure_password
  validates :name, :email, :password, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, length: { minimum: 10, maximum: 32 }

  def locked?
    attempts >= MAX_ATTEMPTS
  end
end
