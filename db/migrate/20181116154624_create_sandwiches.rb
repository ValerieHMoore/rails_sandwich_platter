class CreateSandwiches < ActiveRecord::Migration[5.2]
  def change
    create_table :sandwiches do |t|
      t.string :name
      t.boolean :toast
      t.boolean :grill
      t.boolean :open_face

      t.timestamps
    end
  end
end
