class MembershipsController < ApplicationController
    before_action :authenticate_user!

    def index
        if(@group)
            # View members of a group
        else
            # View groups of a member
            @memberships = Membership.where(user_id: current_user.id).find_each
        end
    end
end
