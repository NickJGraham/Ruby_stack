class CreateLends < ActiveRecord::Migration
  def change
    create_table :lends do |t|
      t.integer :amount
      t.references :lender, index: true, foreign_key: true
      t.references :borrower, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
