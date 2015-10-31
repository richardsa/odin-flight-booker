class CreateBookings < ActiveRecord::Migration
  def change
    drop_table :bookings
    drop_table :pasengers
    create_table :bookings do |t|
      t.references :flight, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
