import React from 'react';
import ApiRequestHelper from '../helpers/apiRequestHelper'

class PlanetName extends React.Component {
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
          <button className = "planet-button" onClick = {this.props.showDetail} id = {planet.name}>{planet.name}</button>
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
    this.apiRequestHelper.getAll((allPlanets) => {
      this.setState({planets: allPlanets})
    })
  }
}

export default PlanetName;
