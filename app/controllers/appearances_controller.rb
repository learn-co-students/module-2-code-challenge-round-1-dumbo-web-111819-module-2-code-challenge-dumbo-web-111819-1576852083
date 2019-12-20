class AppearancesController < ApplicationController
    def new
        
        @appearance = Appearance.new
    end

    def create
        # byebug
        @appearance = Appearance.create(strong_params)

        if !@appearance.valid?
            flash[:error] = @appearance.errors.full_messages
            redirect_to new_appearance_path
        else
            flash[:notice] = "Successfully Added Appearance!"
            redirect_to "/episodes/#{strong_params[:episode_id]}"
        end
    end

    private

    def strong_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end
end
