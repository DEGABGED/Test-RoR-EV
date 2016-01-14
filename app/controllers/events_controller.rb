class EventsController < ApplicationController
	def index
		@events = Event.all
	end

	def create
		@event = Event.create(event_params)
		redirect_to events_path
	end

	def new
		@event = Event.new
	end

	def edit
	end

	def show
	end

	def update
	end

	def destroy
	end

	private
	def event_params
		params.require(:event).permit(:title, :venue, :time, :time_end, :desc)
	end
end
