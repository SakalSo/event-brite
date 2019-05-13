class RegistrationsController < ApplicationController
  def index
      @event = Event.find(params[:event_id])
    @registrations = @event.registrations;
  end

  def new
    @event = Event.find(params[:event_id])
    @registration = @event.registrations.new # @event.registrations is a method from Event.rb model [has_many :registrations] not the Registration class model
  end

  def create
    @event = Event.find(params[:event_id])
    @registration = @event.registrations.new(registrations_params)
    @registration.save
    if @registration.save
      redirect_to event_registrations_path(@event)
    else
      render :new
    end
  end

  private

  def registrations_params
    params.require(:registration).permit!
  end
end
