class DesignedController < ApplicationController

  def index
    redirect_to action: :contamnotech
  end

  def contamnotech
    @project = {
      building_type: 'Multi-family',
      location: 'Green Point, NY',
      description: 'Contam.no.tech is housing for technomads in Greenpoint, Brooklyn, New York that offers unique which each have traits of subterranean and high-rise living.
                    Greenpoint, Brooklyn is an aftermath of industry ravage, sewer plant pollution, and oil spills causing the subsequent contamination of the soil with methane and benzene.
                    The site excavation will produce the central shaft of the building, made completely of soil for the technomads to engage with and phytoremediate back to health.
                    The subterranean partiality of each space gives the technomad privacy and a temperate climate within the unit.
                    Varying facade perforations offer a buffer between privacy in housing and views of the city.
                    A connection with the site happens visually via the perforated facade and physically via the soil which pervades each unit.',
      images: [
        'contam-no-tech/01.jpg',
        'contam-no-tech/02.jpg',
        'contam-no-tech/03.jpg',
        'contam-no-tech/04.jpg',
        'contam-no-tech/05.jpg'
      ]
    }
    render 'static/designed'
  end
  
end
