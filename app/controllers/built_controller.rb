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
        'sea-colony/1.jpg',
        'sea-colony/2.jpg',
        'sea-colony/3.jpg',
        'sea-colony/4.jpg',
        'sea-colony/5.jpg',
        'sea-colony/6.jpg',
        'sea-colony/7.jpg',
        'sea-colony/8.jpg'
      ]
    }
    render 'static/built'
  end
  
end
