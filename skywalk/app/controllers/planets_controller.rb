class PlanetsController < ApplicationController
  def index
    planets = Planet.all
    render :json => planets.as_json(
      {
        only: :name,
        include:
        {
          moons:
          {
            only: :name
          }
        }
      }
    )
  end
end
