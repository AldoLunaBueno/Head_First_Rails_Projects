class CreateSeats < ActiveRecord::Migration[7.0]
  def change
    create_table :seats do |t|
      # t.integer :id
      t.integer :flight_id
      t.string :name
      t.decimal :baggage

      t.timestamps
    end
  end
end