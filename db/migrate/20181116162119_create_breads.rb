class CreateBreads < ActiveRecord::Migration[5.2]
  def change
    create_table :breads do |t|
      t.string :name
      t.references :eater, foreign_key: true
      t.references :sandwich, foreign_key: true

      t.timestamps
    end
  end
end
