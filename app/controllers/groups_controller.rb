class GroupsController < ApplicationController
    def index
        @groups = Group.all
    end

    def create
        @group = Group.create(group_params)
        redirect_to groups_path
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
