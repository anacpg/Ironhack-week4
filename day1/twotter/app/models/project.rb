class Project < ApplicationRecord
  validates :body, presence: true
  validates :body, allow_blank: false
end
