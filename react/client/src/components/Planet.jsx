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
      const image = "/images/"+planet.name+".png";

      let divStyle = {
        backgroundImage: "url(" + image + ")"
      };

      let classN = "planet";
      let classN2 = "running";

      if (this.props.selectedPlanet === planet.name && this.props.selectedPlanet !== "Sun") {classN = "planet-selected"}
      if (this.props.selectedPlanet === planet.name && this.props.selectedPlanet === "Sun") {classN = "sun-selected"}
      if (this.props.selectedPlanet === planet.name && this.props.selectedPlanet === "Asteroid-Belt") {classN = "belt-selected"}
      if (this.props.selectedPlanet === planet.name && this.props.selectedPlanet === "Kuiper-Belt") {classN = "kbelt-selected"}
      if (this.props.pause){classN2 = "paused"}

      return (
        <div key = {index} className = {[classN2, planet.name].join(' ')}>
          <div className = {classN} style={divStyle} id = {planet.name} onClick = {this.props.showDetail}>
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
