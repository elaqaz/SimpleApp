class User < ApplicationRecord
  # Adds methods to set and authenticate against a BCrypt password
  has_secure_password

  # Constants
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  # Callbacks
  before_save :downcase_email

  # Validations
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false, message: 'has already been taken' }
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true

  # Scopes
  scope :admins, -> { where(admin: true) }

  # Class Methods
  class << self
    def digest(string)
      cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
      BCrypt::Password.create(string, cost: cost)
    end

    def new_token
      SecureRandom.urlsafe_base64
    end
  end

  # Instance Methods
  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  def authenticated?(attribute, token)
    digest = send("#{attribute}_digest")
    return false if digest.nil?

    BCrypt::Password.new(digest).is_password?(token)
  end

  def forget
    update_attribute(:remember_digest, nil)
  end

  def update_with_password(params)
    current_password = params.delete(:current_password)
    if authenticate(current_password)
      update(params)
    else
      errors.add(:current_password, 'is incorrect')
      false
    end
  end

  def admin?
    admin
  end

  private

  def downcase_email
    self.email = email.downcase
  end
end
