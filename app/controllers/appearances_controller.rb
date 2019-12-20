class AppearancesController < ApplicationController

    def new 
        @appearance = Appearance.new
        @errors = flash[:error]
    end

    def create 
        # byebug
        @appearance = Appearance.create(app_params)
        # byebug
        if @appearance.valid? 
            redirect_to episode_path(@appearance.episode.id)
        else
            flash[:error] = @appearance.errors.full_messages
            redirect_to new_appearance_path
        end
    end

    private 

    def app_params
        params.require(:appearance).permit(:episode_id, :guest_id, :rating)
    end
end
