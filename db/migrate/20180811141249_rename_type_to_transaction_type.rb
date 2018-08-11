class RenameTypeToTransactionType < ActiveRecord::Migration[5.0]
  def change
    rename_column :expenses, :type, :transaction_type
  end
end
