class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.string :title, null: false
      t.text :detail
      t.boolean :is_done, default: false, null: false

      t.timestamps
    end
  end
end
