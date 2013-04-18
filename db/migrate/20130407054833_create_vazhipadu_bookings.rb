class CreateVazhipaduBookings < ActiveRecord::Migration
  def change
    create_table :vazhipadu_bookings do |t|
      t.references :user
      t.references :vazhipadu
      t.references :temple
      t.references :devan
      t.date :date_of_vazhipadu

      t.timestamps
    end
    add_index :vazhipadu_bookings, :user_id
    add_index :vazhipadu_bookings, :vazhipadu_id
    add_index :vazhipadu_bookings, :temple_id
    add_index :vazhipadu_bookings, :devan_id
  end
end
