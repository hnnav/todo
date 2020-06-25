class Project < ApplicationRecord
    has_many :tasks, :dependent => :delete_all 
    has_many :users, through: :tasks

    validates :name, presence: true
end
