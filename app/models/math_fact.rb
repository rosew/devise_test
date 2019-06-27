class MathFact < ApplicationRecord
  
  validates :first_number, :second_number, :answer, presence: true
  validates :first_number, uniqueness: { scope: :second_number }
  
  belongs_to :user, dependent: :destroy


end
