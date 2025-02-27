class AppointmentsController < ApplicationController

    def new
        @appointment = Appointment.new 
    end 

    def create
        @appointment = Appointment.create(appointment_params)
    end 


    def show 
        @appointment = Appointment.find(params[:id])
    end 





    private 

    def appointment_params
        params.require(:appointment).permit(:date, :time, :patient, :doctor)
    end
end 