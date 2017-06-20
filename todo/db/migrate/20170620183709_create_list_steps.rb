class CreateListSteps < ActiveRecord::Migration[5.1]
  def change
    create_table :list_steps do |t|
      t.string :description
      t.boolean :completed
      t.references :list, foreign_key: true

      t.timestamps
    end
  end
end
