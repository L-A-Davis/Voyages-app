class CreateCategoriesDestinations < ActiveRecord::Migration[5.1]
  def change
    create_table :categories_destinations do |t|
      t.belongs_to :destination, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
