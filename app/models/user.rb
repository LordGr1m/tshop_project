class User
  include Mongoid::Document
  include ActiveModel::SecurePassword

  field :email, type: String
  field :name, type: String
  field :role, type: String
  field :status, type: String

  field :password_digest

  has_secure_password
end
