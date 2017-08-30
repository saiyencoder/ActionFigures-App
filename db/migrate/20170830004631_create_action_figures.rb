class CreateActionFigures < ActiveRecord::Migration[5.1]
  def change
    create_table :action_figures do |t|
      t.string :category
      t.string :description
      t.integer :price

      t.timestamps
    end
  end
end
