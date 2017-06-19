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
      const image = planet.image;
      const divStyle = {
        height: "100px",
        backgroundSize: "contain",
        backgroundRepeat: "no-repeat",
        backgroundImage: "url(" + image + ")"
      };
      return (
        <div key = {index} className = {planet.name} >
          <div className="planet" style={ divStyle }>
            <div className="shadow"></div>
          </div>
        </div>
      );
    });
    return (
      <div className = "wrapper">
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
