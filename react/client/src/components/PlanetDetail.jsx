import React from 'react';
import ApiRequestHelper from '../helpers/apiRequestHelper'

class PlanetDetail extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      planets: []
    };
    this.apiRequestHelper = new ApiRequestHelper();
  }

  render(){
    const indvPlanets = this.state.planets.map((planet, index) => {
      return (
        <div key = {index}>
          <div className = 'planet-image'>
            <img className = 'planet-detail-image' src = {planet.image}></img>
          </div>
          <div className = 'planet-text'>
            <h3>{planet.name}</h3>
            <p>Type of Planet: {planet.typeofplanet}</p>
            <p>Size (km): {planet.size}</p>
            <p>Distance From Sun (AU): {planet.distancefromsun}</p>
            <p>Length of Year (Earth Days): {planet.lengthofyear}</p>
            <p>Description: {planet.description}</p>
          </div>
        </div>
      );
    });
    return (
      <div>
        {indvPlanets}
      </div>
    );
  }

  componentDidMount(){
    this.apiRequestHelper.getAll((planetsresults) => {
      this.setState({planets: planetsresults})
    })
  }
}

export default PlanetDetail;
