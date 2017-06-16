class PlanetsController < ApplicationController
  def index
    planets = Planet.all
    render :json => planets.as_json(
      {
        only: [:name, :typeofplanet, :size, :distancefromsun, :lengthofyear, :description, :image],
        include:
        {
          moons:
          {
            only: [:name, :size, :orbit, :description]
          }
        }
      }
    )
  end
end
