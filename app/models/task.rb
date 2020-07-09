class Task < ApplicationRecord
  # before_save :default_status
# 
  # def default_status
  #   self.completed_status = false
  # end

  belongs_to :user
  belongs_to :project

  validates :content, presence: true
end
