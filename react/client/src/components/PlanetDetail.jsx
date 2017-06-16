import React from 'react';

class PlanetDetail extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      planets: []
    };
  }

  render(){
    return (
      <div>
        <h3>{this.state.planets.name}</h3>
        <p>Type of Planet: {this.state.planets.typeofplanet}</p>
        <p>Size (km): {this.state.planets.size}</p>
        <p>Distance From Sun (AU): {this.state.planets.distancefromsun}</p>
        <p>Length of Year (Earth Days): {this.state.planets.distancefromsun}</p>
        <p>Description: {this.state.planets.description}</p>
        <p>Image: {this.state.planets.image}</p>
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
        planets: data[0]
      });
    });
    request.send();
  }
}

export default PlanetDetail;
