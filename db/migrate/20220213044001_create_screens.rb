class CreateScreens < ActiveRecord::Migration[6.1]
  def change
    create_table :screens, primary_key: %w(screen_num sheet_id) do |t|
      t.integer :screen_num, null: false 
      t.references :sheet, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true
      t.references :schedule, null: false, foreign_key: true

      t.timestamps
    end
  end
end
