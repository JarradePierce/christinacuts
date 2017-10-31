class Message < ApplicationRecord
  validates :name, :email, :note, presence: :true
end