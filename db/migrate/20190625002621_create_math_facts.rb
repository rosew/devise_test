class CreateMathFacts < ActiveRecord::Migration[6.0]
  def change
    create_table :math_facts do |t|
      t.integer :first_number
      t.integer :second_number
      t.integer :answer

      t.timestamps
    end
  end
end
