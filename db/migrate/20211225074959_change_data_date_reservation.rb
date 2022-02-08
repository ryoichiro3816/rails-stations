class ChangeDataDateReservation < ActiveRecord::Migration[6.1]
  def change
    change_column :reservations, :date, :date
  end
end
