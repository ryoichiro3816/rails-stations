class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
    @movie = Movie.find(params[:movie_id])
    @column = params[:column]
    @row = params[:row]
    @start_time = params[:start_time]
    @end_time = params[:end_time]
    @date = params[:date]
  end
end
