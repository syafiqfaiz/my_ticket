class EventsController < ApplicationController
	def new
		@event = Event.new
	end

	def create
		@event = Event.create(event_params)
		@event.owner_id = session[:user_id]
		
		if @event.save
			redirect_to events_path
		else
			redirect_to new_event_path
		end
	end

	def index
		@events = Event.all
	end

	private
	def event_params
		params.require(:event).permit(:name,:venue_name,:date,:seats_number)
		
	end
end



