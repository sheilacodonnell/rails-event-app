class EventsController < ApplicationController
    def index
        @events = Event.all
        @user = current_user
    end

    def show
        @event = Event.find(params[:id])

    end

    def new
        @event = Event.new
    end

    def create
        @event = Event.new(event_params)
        @event.host_id = current_user.id
        if @event.save(event_params)
            flash[:notice] = "New event created!"
            redirect_to events_path
        else
            flash[:alert] = "Error creating event"
            render :new
        end
    end



    private

    def event_params
        params.require(:event).permit(:title, :scheduled_for, :location, :description)
    end
  end