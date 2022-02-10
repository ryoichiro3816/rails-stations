class ChangeDataEndTimeToSchedule < ActiveRecord::Migration[6.1]
  def change
    change_column :schedules, :end_time, :time
  end
end
