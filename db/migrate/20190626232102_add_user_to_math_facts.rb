class AddUserToMathFacts < ActiveRecord::Migration[6.0]
  def change
    add_reference :math_facts, :user, null: false, foreign_key: true
    add_column :math_facts, :status, :integer
  end
end
