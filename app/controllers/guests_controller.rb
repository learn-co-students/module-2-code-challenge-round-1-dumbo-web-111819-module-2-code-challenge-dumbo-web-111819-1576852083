class GuestsController < ApplicationController
  before_action :set_guests, only: :show

  def index
    @guests = Guest.all
  end

  def show
  end

  private

    def set_guests
      @guest = Guest.find(params[:id])
    end

end
