class GuestsController < ApplicationController
  
    def new
      @guest = Guest.new
      @user = current_user
      @event = Event.find(params[:event_id])
    end
  
    def create
      @guest = Guest.new(guest_params)
      @guest.user = current_user
      @guest.event = Event.find(params[:event_id])
      if @guest.save
        redirect_to events_path, notice: "You are registered!"
      else
        render action: 'new'
      end
    end
  
  private
  
    def guest_params
      params.require(:guest).permit(:event_id, :user_id, :user_attributes => [:first_name])
    end
  end