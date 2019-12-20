class AppearancesController < ApplicationController

    def new
        @errors = flash[:errors]
        @appearance = Appearance.new

    end

    def create
        appearance_params = params.require(:appearance).permit(:guest_id, :episode_id, :rating)
        @appearance = Appearance.create(appearance_params)

        if @appearance.valid?
            flash[:succeed] = 'Appearance created!!!'

            # redirect_to episode page (association)

            redirect_to episode_path(@appearance.episode.id)  
        else
            flash[:errors] = @appearance.errors.full_messages
            byebug
            
            redirect_to new_appearance_path
        end
    end
end
