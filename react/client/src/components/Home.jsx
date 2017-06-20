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
      selectedPlanet: null
    }
    this.apiRequestHelper = new ApiRequestHelper();
    this.showPlanetDetail = this.showPlanetDetail.bind(this);
    this.showInfo = this.showInfo.bind(this);
    this.hidePlanetDetail = this.hidePlanetDetail.bind(this);
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
        <h1 className='title'>The Solar System</h1>
        <Menu showDetail = {this.showPlanetDetail} showInfo = {this.showInfo}/>
        <Planet selectedPlanet = {this.state.selectedPlanet} showDetail = {this.showPlanetDetail}/>
        {planetDetails}
        {information}
      </div>
    )
  }

  showPlanetDetail(event){
    const planet = (event.target.id)
    this.setState({selectedPlanet: planet})
    this.apiRequestHelper.getAll((planets) => {
      planets.forEach((planetinarray) => {
        if (planetinarray.name === planet) {
          this.setState({planetDetail: planetinarray})
        }
      })
    })
  }

  hidePlanetDetail(){
    this.setState({planetDetail: null})
    this.setState({selectedPlanet: null})
  }

  showInfo(){
    if (this.state.showInformation === null) {this.setState({showInformation: true})}
    if (this.state.showInformation === true) {this.setState({showInformation: null})}
  }
}

export default Home
