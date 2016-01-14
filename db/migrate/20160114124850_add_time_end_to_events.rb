class AddTimeEndToEvents < ActiveRecord::Migration
  def change
    add_column :events, :time_end, :datetime
  end
end
