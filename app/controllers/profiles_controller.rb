class ProfilesController < ApplicationController
    before_action :authenticate_user!

    def show
	@user_name = current_user.user_name
    end
end
