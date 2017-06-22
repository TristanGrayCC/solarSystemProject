import React from 'react'
import PlanetName from './PlanetName'

class Menu extends React.Component{
  constructor(props){
    super(props);
    this.state = {
      showPlanets: false,
      showObjects: false,
    }
    this.showPlanetList = this.showPlanetList.bind(this);
    this.showObjectList = this.showObjectList.bind(this);
  }

  render(){
    let classN = "planet-dropdown-hide";
    let classN2 = "object-dropdown-hide";

    if (this.state.showPlanets === true) {classN = "planet-dropdown-show"}
    if (this.state.showObjects === true) {classN2 = "planet-dropdown-show"}

    return (
      <div className="detail">
        <h2 className='title'>Menu</h2>
        <button className='planet-button' onClick = {this.props.showInfo}>Information</button>
        <br></br>
        <a href="http://localhost:3000/#/detail" className="link">All Data</a>
        <div className="dropdown-planets">
        <button onClick={this.showPlanetList} className="dropbtn">Planets</button>
          <div className={classN}>
            <PlanetName planet = "Sun" showDetail = {this.props.showDetail}/>
            <PlanetName planet = "Mercury" showDetail = {this.props.showDetail}/>
            <PlanetName planet = "Mars" showDetail = {this.props.showDetail}/>
            <PlanetName planet = "Earth" showDetail = {this.props.showDetail}/>
            <PlanetName planet = "Venus" showDetail = {this.props.showDetail}/>
            <PlanetName planet = "Jupiter" showDetail = {this.props.showDetail}/>
            <PlanetName planet = "Saturn" showDetail = {this.props.showDetail}/>
            <PlanetName planet = "Uranus" showDetail = {this.props.showDetail}/>
            <PlanetName planet = "Neptune" showDetail = {this.props.showDetail}/>
          </div>
        </div>
        <div className="dropdown-objects">
        <button onClick={this.showObjectList} className="dropbtn">Other Objects</button>
          <div className={classN2}>
            <PlanetName planet = "Asteroid-Belt" showDetail = {this.props.showDetail}/>
            <PlanetName planet = "Kuiper-Belt" showDetail = {this.props.showDetail}/>
            <PlanetName planet = "Pluto" showDetail = {this.props.showDetail}/>
            <PlanetName planet = "Charon" showDetail = {this.props.showDetail}/>
            <PlanetName planet = "Moon" showDetail = {this.props.showDetail}/>
          </div>
        </div>
      </div>
    )
  }

  showPlanetList(){
    console.log("Clicked")
    console.log(event)
    if (this.state.showPlanets === false) {this.setState({showPlanets: true})}
    if (this.state.showPlanets === true) {this.setState({showPlanets: false})}
  }
  showObjectList(){
    if (this.state.showObjects === false) {this.setState({showObjects: true})}
    if (this.state.showObjects === true) {this.setState({showObjects: false})}
  }
}

export default Menu
