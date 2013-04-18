class CreateVazhipadus < ActiveRecord::Migration
  def change
    create_table :vazhipadus do |t|
      t.string :name
      t.text :description
      t.references :temple
      t.references :devan
      t.decimal :rate

      t.timestamps
    end
    add_index :vazhipadus, :temple_id
    add_index :vazhipadus, :devan_id
  end
end
