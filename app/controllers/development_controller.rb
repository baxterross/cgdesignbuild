class DevelopmentController < ApplicationController

  def index
    @project = {
      images: [
        'development/0.jpg',
        'development/1.jpg',
        'development/2.jpg',
        'development/3.jpg'
      ]
    }
    render 'static/development'
  end

end
