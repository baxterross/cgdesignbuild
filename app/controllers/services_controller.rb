class ServicesController < ApplicationController

  def index
    redirect_to action: :design
  end

  def design
    @summary = 'respresentation and counseling through all stages of planning and construction'
    @services = [
      'schematic architectural design',
      'design development',
      'procurement of structural engineering drawings',
      'production of construction documents',
      'coordination with construction teams',
      'permitting / plan check',
      'construction management'
    ]
    render 'static/services'
  end
  
  def repositioning
    @summary = 'repositioning existing investment properties / area market research analyses'
    @services = [
      'financial and development program analyses',
      'creation of value through capital improvements program',
      'construction program phasing',
      'competitive market rent increase modeling',
      'construction managemnt and client representation'
    ]
    render 'static/services'
  end

end
