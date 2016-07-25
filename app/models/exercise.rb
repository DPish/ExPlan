class Exercise < ApplicationRecord
  belongs_to :explan
  has_many :extasks
end
