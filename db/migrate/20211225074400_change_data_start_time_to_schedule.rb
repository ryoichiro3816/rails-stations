class ChangeDataStartTimeToSchedule < ActiveRecord::Migration[6.1]
  def change
    change_column :schedules, :start_time, :time
  end
end
