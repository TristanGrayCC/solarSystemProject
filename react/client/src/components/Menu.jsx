import React from 'react'
import PlanetName from './PlanetName'

class Menu extends React.Component{
  constructor(props){
    super(props);
  }
  render(){
    return (
      <div className="detail">
        <h2 className='title'>Menu</h2>
        <button className='planet-button' onClick = {this.props.showInfo}>Information</button>
        <br></br>
        <a href="http://localhost:3000/#/detail">All Planets</a>
        <PlanetName showDetail = {this.props.showDetail}/>
      </div>
    )
  }
}

export default Menu
