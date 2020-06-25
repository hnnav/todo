class User < ApplicationRecord
    has_secure_password
    has_many :tasks
    has_many :projects, through: :tasks

    validates :username, presence: true, length: { maximum: 50 }, uniqueness: true
    validates :password, presence: true
    validates :password_confirmation, presence: true
end
