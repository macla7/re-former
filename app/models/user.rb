class User < ApplicationRecord
  validates :username, uniqueness: true, length: { in: 5..20 }, presence: true
  validates :password, presence: true, length: { in: 6..50 }, format: { with: /(?=.*?[0-9])(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[#?!@$%^&*-])/ }
  validates :email, presence: true, uniqueness: true, format: { with: /@/, message: 'Must be a proper email with @ symbol..'}
end
