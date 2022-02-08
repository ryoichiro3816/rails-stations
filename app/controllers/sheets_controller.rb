class SheetsController < ApplicationController
  def index
    @sheets = Sheet.all
    @movie_id = params[:movie_id]
    @schedule_id = params[:schedule_id]
    params[:start_time]
    params[:end_time]
  end
end
