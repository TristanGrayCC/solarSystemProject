import React from 'react';

class PlanetDetail extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      planets: []
    };
  }

  render(){
    const indvPlanets = this.state.planets.map((planet, index) => {
      return (
        <div key = {index}>
          <h3>{planet.name}</h3>
          <p>Type of Planet: {planet.typeofplanet}</p>
          <p>Size (km): {planet.size}</p>
          <p>Distance From Sun (AU): {planet.distancefromsun}</p>
          <p>Length of Year (Earth Days): {planet.lengthofyear}</p>
          <p>Description: {planet.description}</p>
          <p>Image: {planet.image}</p>
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
}

export default PlanetDetail;
