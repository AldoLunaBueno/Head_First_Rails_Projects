class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      # t.integer :id
      t.datetime :departure
      t.datetime :arrival
      t.string :destination
      t.decimal :baggage_allowance
      t.integer :capacity

      t.timestamps
    end
  end
end
