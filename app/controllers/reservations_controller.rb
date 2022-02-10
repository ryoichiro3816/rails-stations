class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
    @movie = Movie.find(params[:movie_id])
    @schedule_id = params[:schedule_id]
    @sheet_id = params[:sheet_id]
    @date = params[:date]
    if (@date.nil?)||(@sheet_id.nil?)
      render status:400
    elsif @date && @sheet_id
      render status:200
    end
  end

  def create
    @reservation = Reservation.new(reservation_params) 
    
    if @reservation.save
      redirect_to movies_path
    else
      redirect_to movie_schedule_sheets_path(schedule_id: reservation_params[:schedule_id], movie_id: params[:reservation][:movie_id], date: reservation_params[:date])
    end
  end

  private
    def reservation_params
      params.require(:reservation).permit(:name, :email, :date, :sheet_id, :schedule_id)
    end
end

