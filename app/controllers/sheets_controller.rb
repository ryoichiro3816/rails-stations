class SheetsController < ApplicationController
  def index
    @sheets = Sheet.all
    @movie_id = params[:movie_id]
    @schedule_id = params[:schedule_id]
    @sheet_id = params[:sheet_id]
    @date = params[:date]
  end
end
