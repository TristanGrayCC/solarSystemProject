import React from 'react'
import { Link } from 'react-router'
import Planet from './Planet'
import Menu from './Menu'
import PlanetDetails from './PlanetDetails'
import InformationTab from './InformationTab'
import ApiRequestHelper from '../helpers/apiRequestHelper'

class Home extends React.Component{
  constructor(){
    super();
    this.state = {
      planetDetail: null,
      showInformation: null,
      selectedPlanet: null,
      pause: false,
    }
    this.apiRequestHelper = new ApiRequestHelper();
    this.showPlanetDetail = this.showPlanetDetail.bind(this);
    this.showInfo = this.showInfo.bind(this);
    this.hidePlanetDetail = this.hidePlanetDetail.bind(this);
    this.pause = this.pause.bind(this);
  }
  render(){
    let planetDetails = <p></p>
    let information = <p></p>
    if (this.state.planetDetail !== null) {
      planetDetails = <PlanetDetails planet = {this.state.planetDetail} hideDetail = {this.hidePlanetDetail}/>
    }
    if (this.state.showInformation !== null) {
      information = <InformationTab/>
    }
    return(
      <div className="home">
        <div className='header'>
          <h1 className='title'>The Solar System</h1>
          <h3 className='pause' onClick = {this.pause}> Pause</h3>
        </div>
        <Menu showDetail = {this.showPlanetDetail} showInfo = {this.showInfo}/>
        <Planet selectedPlanet = {this.state.selectedPlanet} showDetail = {this.showPlanetDetail} pause = {this.state.pause}/>
        {planetDetails}
        {information}
      </div>
    )
  }

  showPlanetDetail(event){
    const planet = (event.target.id)
    if (this.state.selectedPlanet === null){
      this.setState({selectedPlanet: planet})
      this.apiRequestHelper.getAll((planets) => {
        planets.forEach((planetinarray) => {
          if (planetinarray.name === planet) {
            this.setState({planetDetail: planetinarray})
          }
        })
      })
    }
    if (this.state.selectedPlanet !== null){
      this.setState({planetDetail: null})
      this.setState({selectedPlanet: null})
    }
  }

  hidePlanetDetail(){
    this.setState({planetDetail: null})
    this.setState({selectedPlanet: null})
  }

  showInfo(){
    if (this.state.showInformation === null) {this.setState({showInformation: true})}
    if (this.state.showInformation === true) {this.setState({showInformation: null})}
  }

  pause(){
    if (this.state.pause === false) {this.setState({pause: true})}
    if (this.state.pause === true) {this.setState({pause: false})}
  }
}

export default Home
