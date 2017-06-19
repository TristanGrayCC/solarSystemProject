import React from 'react'
import { Link } from 'react-router'
import Planet from './Planet'
import Menu from './Menu'
import PlanetDetails from './PlanetDetails'
import ApiRequestHelper from '../helpers/apiRequestHelper'

class Home extends React.Component{
  constructor(){
    super();
    this.state = {
      planetDetail: null
    }
    this.apiRequestHelper = new ApiRequestHelper();
    this.showPlanetDetail = this.showPlanetDetail.bind(this);
    this.hidePlanetDetail = this.hidePlanetDetail.bind(this);
  }
  render(){
    let planetDetails = <p></p>
    if (this.state.planetDetail !== null) {
      planetDetails = <PlanetDetails planet = {this.state.planetDetail} hideDetail = {this.hidePlanetDetail}/>
    }
    console.log(this.state.planetDetail)
    return(
      <div className="home">
        <h1 className='title'>The Solar System</h1>
        <Menu showDetail = {this.showPlanetDetail}/>
        <Planet/>
        {planetDetails}
      </div>
    )
  }

  showPlanetDetail(event){
    const planet = (event.target.innerText)
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
  }
}

export default Home
