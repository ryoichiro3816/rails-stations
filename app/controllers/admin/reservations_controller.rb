class Admin::ReservationsController < ApplicationController
  def index
    @reservations = Reservation.paginate(page: params[:page], per_page: 16)
  end

  def show

  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params) 
    if @reservation.save
      redirect_to admin_reservations_path
    else
      flash.now[:alert] = "Error"
      render 'new'
    end
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation = Reservation.find(params[:id])
    if @reservation.update(reservation_params)
      redirect_to admin_reservations_path
    else
      flash.now["alert"] = "Error"
      render 'edit'
    end
  end

  def destroy
    Reservation.find(params[:id]).destroy
    flash.now["success"] = "Reservation deleted"
    redirect_to admin_reservations_path
  end

  private
    def reservation_params
      params.permit(:name, :email, :date, :sheet_id, :schedule_id)
    end

end