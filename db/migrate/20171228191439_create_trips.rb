class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.string :title
      t.string :comment
      t.integer :rating
      t.boolean :taken
      t.datetime :start_date
      t.datetime :end_date
      t.belongs_to :user, foreign_key: true
      t.belongs_to :destination, foreign_key: true

      t.timestamps
    end
  end
end
