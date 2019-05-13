class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to event_path(@event) # redirect_to prefix + _path (data ID) or just prefix + _path if it static
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save?
      redirect_to @event #short way
    else
      render :new
    end
  end
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end
  private
    def event_params
      params.require(:event).permit!
    end
end
