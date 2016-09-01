class Contact < ApplicationRecord
  #validates :name, format: { with: /\A[0-9]+\Z/ }
  validates :phone_number, format: { with: /(\d\d\d\d\d\d\d\d\d)/}
  validates_format_of :email_address, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  #validates_format_of :email_address, format: { with: /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i }
end
