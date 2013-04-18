class CreateDevans < ActiveRecord::Migration
  def change
    create_table :devans do |t|
      t.string :name
      t.text :description
      t.references :temple

      t.timestamps
    end
    add_index :devans, :temple_id
  end
end
