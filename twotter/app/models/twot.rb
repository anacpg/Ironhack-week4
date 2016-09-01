class Twot < ActiveRecord::Base
  belongs_to :user

  validates :body, presence: true
  validates :body, format: { with: /\A[a-zA-Z0-9]+\Z/, message: "cannot contain white spaces"}

  validates :twot_number, numericality: { greater_than: 0, less_than: 100}

end
