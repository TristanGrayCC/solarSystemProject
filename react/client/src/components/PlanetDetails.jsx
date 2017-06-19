import React from 'react';

class PlanetDetails extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      planet: []
    };
  }

  render(){
    return (
      <div className = {planetdiv}>
        <h3>{this.state.planet.name}</h3>
        <p>Type of Planet: {this.state.planet.typeofplanet}</p>
        <p>Size (km): {this.state.planet.size}</p>
        <p>Distance From Sun (AU): {this.state.planet.distancefromsun}</p>
        <p>Length of Year (Earth Days): {this.state.planet.lengthofyear}</p>
        <p>Description: {this.state.planet.description}</p>
        <img src = {this.state.planet.image}></img>
      </div>
    );
  };

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
        planet: data[0]
      });
    });
    request.send();
  }
}

export default PlanetDetails;
