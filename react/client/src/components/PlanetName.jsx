import React from 'react';
import PlanetDetails from './PlanetDetails'

class PlanetName extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      planets: []
    };
    this.showPlanetDetail = this.showPlanetDetail.bind(this);
  }

  render(){
    const indvPlanets = this.state.planets.map((planet, index) => {
      return (
        <div key = {index}>
          <button className = "planet-button" onClick = {this.showPlanetDetail}>{planet.name}</button>
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
    const url = 'http://localhost:5000/api/planets';
    const request = new XMLHttpRequest();
    request.open('GET', url);

    request.addEventListener('load', () => {
      console.log("Making request")
      if (request.status !== 200) return;
      const jsonString = request.responseText;
      const data = JSON.parse(jsonString);
      console.log(data);
      this.setState({
        planets: data
      });
    });
    request.send();
  }

  showPlanetDetail(event){
    console.log(event.target.innerText)
    return <PlanetDetails/>
  }
}

export default PlanetName;
