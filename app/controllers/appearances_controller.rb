class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new
        @errors = flash[:errors]
    end

    def create
        @appearance = Appearance.create(params.require(:appearance).permit(:guest_id, :episode_id, :rating))

        if @appearance.valid?
        redirect_to episode_path(@appearance.episode_id)
        else
            flash[:errors] = @appearance.errors.full_messages
            redirect_to new_appearance_path
        end
    end
end
