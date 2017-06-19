import React from 'react'
import { Link } from 'react-router'
import Planet from './Planet'
import Menu from './Menu'
import PlanetDetails from './PlanetDetails'

class Home extends React.Component{
  constructor(){
    super();
    this.showPlanetDetail = this.showPlanetDetail.bind(this);
  }
  render(){
    return(
      <div className="home">
        <h1 className='title'>The Solar System</h1>
        <Planet/>
        <Menu showDetail = {this.showPlanetDetail}/>
      </div>
    )
  }

  showPlanetDetail(event){
    console.log(event.target.innerText)
    return <PlanetDetails planet = {event.target.innerText}/>
  }
}

export default Home
