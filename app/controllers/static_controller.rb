class StaticController < ApplicationController

  def index
    @images = [
      'sea-colony/1.jpg',
      'sea-colony/2.jpg',
      'sea-colony/3.jpg',
      'sea-colony/4.jpg',
      'sea-colony/5.jpg',
      'sea-colony/6.jpg',
      'sea-colony/7.jpg',
      'sea-colony/8.jpg'
    ]
  end
  
  def about
  end

end
