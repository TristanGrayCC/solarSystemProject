import React from 'react';
import ApiRequestHelper from '../helpers/apiRequestHelper'

class PlanetName extends React.Component {
  constructor(props){
    super(props);
    this.apiRequestHelper = new ApiRequestHelper();
  }

  render(){
    return (
      <div>
        <button className = "planet-button" onClick = {this.props.showDetail} id = {this.props.planet}>{this.props.planet}</button>
      </div>
    );
  }
}

export default PlanetName;
