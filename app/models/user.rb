class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :trackable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :math_facts

  
  def generate_addition_facts
    (0..9).each do |i|
      (0..9).each do |j|
        self.math_facts.create_or_find_by(first_number: i, second_number: j, answer: i + j, status: 1)
      end
    end
  end

end
