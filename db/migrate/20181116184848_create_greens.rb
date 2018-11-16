class CreateGreens < ActiveRecord::Migration[5.2]
  def change
    create_table :greens do |t|
      t.string :name

      t.timestamps
    end
  end
end
