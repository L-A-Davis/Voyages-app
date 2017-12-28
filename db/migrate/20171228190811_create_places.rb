class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :place_type
      t.string :name
      t.string :sublocation
      t.string :summary
      t.belongs_to :destination, foreign_key: true

      t.timestamps
    end
  end
end
