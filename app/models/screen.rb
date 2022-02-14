class Screen < ApplicationRecord
  self.primary_keys = :screen_num, :sheet_id
  belongs_to :sheet
  belongs_to :movie
  belongs_to :schedule
end

#screenモデルの作成から
