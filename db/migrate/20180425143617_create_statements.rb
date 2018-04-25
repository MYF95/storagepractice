class CreateStatements < ActiveRecord::Migration[5.2]
  def change
    create_table :statements do |t|
      t.date :date
      t.integer :amount
      t.string :description

      t.timestamps
    end
  end
end
