class VenuesController < ApplicationController
  def create
    @venue = Venue.new(venue_params)
    if @venue.save
      redirect_to new_event_path
    else
      render :action => 'new'
    end
  end

  def new
    @regions = Region.all
  end

  private
  def venue_params
    params.require(:venue).permit!
  end
end
