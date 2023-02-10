class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.integer :account_id
      t.string :number
      t.string :type

      t.timestamps
    end
  end
end
