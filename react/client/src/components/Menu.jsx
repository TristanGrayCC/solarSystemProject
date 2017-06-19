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
        <PlanetName showDetail = {this.props.showDetail}/>
      </div>
    )
  }
}

export default Menu
