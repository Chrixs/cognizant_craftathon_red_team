class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.string :company
      t.float :amount
      t.date :date
      t.string :category

      t.timestamps
    end
  end
end
