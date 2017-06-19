import React from 'react';

class PlanetName extends React.Component {
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
          <button className = "planet-button" onClick = {this.props.showDetail}>{planet.name}</button>
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

export default PlanetName;
