class Project < ApplicationRecord
    has_many :tasks, :dependent => :delete_all 
    has_many :users, through: :tasks

    scope :alphabetical, -> { order(:name) }

    validates :name, presence: true
end
