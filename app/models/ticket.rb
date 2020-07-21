class Ticket < ApplicationRecord
  belongs_to :gather
  belongs_to :user
end
