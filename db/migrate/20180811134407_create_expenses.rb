class CreateExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :expenses do |t|
      t.string   :concept 
      t.date     :date
      t.integer  :amount
      t.integer  :type
      t.integer  :category

      t.timestamps
    end
  end
end
