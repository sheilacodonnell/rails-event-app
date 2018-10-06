class UsersController < ApplicationController

def your_events
    @guest = Guest.where(user_id: current_user.id)
 end

end