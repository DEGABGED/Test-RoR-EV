class GroupsController < ApplicationController
    def index
        @groups = Group.all
    end

    def create
        if @group = Group.create(group_params)
		flash[:success] = "Success! Group was made."
	        redirect_to groups_path
	else 
		flash.now[:alert] = "ERROR: Something went wrong! Try again"
		render :new
	end
    end

    def new
        @group = Group.new
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
    def group_params
        params.require(:group).permit(:name, :desc)
    end
end
