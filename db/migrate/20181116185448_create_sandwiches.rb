class CreateSandwiches < ActiveRecord::Migration[5.2]
  def change
    create_table :sandwiches do |t|
      t.string :name
      t.boolean :toast
      t.boolean :grill
      t.boolean :open_face
      t.references :eater, foreign_key: true
      t.references :bread, foreign_key: true
      t.references :spread, foreign_key: true
      t.references :meat, foreign_key: true
      t.references :cheese, foreign_key: true
      t.references :green, foreign_key: true

      t.timestamps
    end
  end
end
