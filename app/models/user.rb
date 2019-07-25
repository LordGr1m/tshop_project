class User
  include Mongoid::Document
  include Mongoid::Timestamps
  include ActiveModel::SecurePassword


  field :email, type: String
  validates :email, uniqueness: true


  field :name, type: String
  field :role, type: String
  field :status, type: String

  field :password_digest

  has_secure_password
end
