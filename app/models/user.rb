class User < ApplicationRecord
    has_secure_password

    has_many :tasks
    has_many :projects, through: :tasks

    validates :email, presence: true
end
