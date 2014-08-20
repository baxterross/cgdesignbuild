class BuiltController < ApplicationController

  def index
    redirect_to action: :sea_colony
  end

  def sea_colony
    @project = {
      location: 'Santa Monica, California',
      completion_date: 'August 2014',
      description: 'This residence provides a provocative space for exhibiting fine art paintings while providing a subtle retreat for the client and her family.
                    Addressing thhe issue of natural light and privacy, the design utilizes existing and new skylights and an extensive low-lighting system to illuminate the minimalist space.
                    The pristine whites and greys of concrete floors, white walls. and an effortless steel staircase act to channel the ocean air and sunlight into the home',
      images: [
        'sea-colony/01.jpg',
        'sea-colony/02.jpg',
        'sea-colony/03.jpg',
        'sea-colony/04.jpg',
        'sea-colony/05.jpg',
        'sea-colony/06.jpg',
        'sea-colony/07.jpg',
        'sea-colony/08.jpg',
        'sea-colony/09.jpg'
      ]
    }
    render 'static/built'
  end
  
end
