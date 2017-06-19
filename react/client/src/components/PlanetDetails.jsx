import React from 'react';

class PlanetDetails extends React.Component {
  constructor(props){
    super(props);
    };

  render(){
    return (
      <div className = 'planet-detail'>
        <button className = 'indv-planet-button' onClick = {this.props.hideDetail}>X</button>
        <div className = 'planet-image'>
          <img className = 'planet-detail-image' src = {this.props.planet.image}></img>
        </div>
        <div className = 'planet-text'>
          <h3>{this.props.planet.name}</h3>
          <p>Type of Planet: {this.props.planet.typeofplanet}</p>
          <p>Size (km): {this.props.planet.size}</p>
          <p>Distance From Sun (AU): {this.props.planet.distancefromsun}</p>
          <p>Length of Year (Earth Days): {this.props.planet.lengthofyear}</p>
          <p>Description: {this.props.planet.description}</p>
        </div>
      </div>
    );
  };
}

export default PlanetDetails;
