class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :venue
      t.datetime :time
      t.text :desc

      t.timestamps null: false
    end
  end
end
