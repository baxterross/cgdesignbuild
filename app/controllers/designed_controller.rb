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

  def surfaceform
    @project = {
      building_type: 'Art Gallery for American Turkish Society',
      location: 'Chelsea, New York',
      description: 'Generating building formations based on Islamic patterning, the goal of this project was to provide a sleeve which created
                    a wrapper around the building and developed a central ramping system that would lead public and private viewers of the art
                    gallery to the rooftop. This vortex created by the ramp provides a central core to the building as well as the initial interface
                    with which to build a ramp that would become part of the pedestrian sidewalk.',
      images: [
        'surface-form/01.jpg',
        'surface-form/02a.jpg',
        'surface-form/02b.jpg',
        'surface-form/03.jpg',
        'surface-form/04a.jpg',
        'surface-form/04b.jpg'
      ]
    }
    render 'static/designed'
  end
  
end
