import React from 'react';

class PlanetDetail extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      planets: []
    };
  }

  render(){
    const indvPlanets = this.state.planets.map((planet, index) => {
      const image = planet.image;
      const divStyle = {
        height: "100px",
        backgroundSize: "contain",
        backgroundRepeat: "no-repeat",
        backgroundImage: "url(" + image + ")"
      };
      return (
        <div key = {index} className = {planet.name} >
          <div className="planet" style={ divStyle }>
            <div className="shadow"></div>
          </div>
        </div>
      );
    });
    return (
      <div className = "wrapper">
        {indvPlanets}
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
        planets: data
      });
    });
    request.send();
  }
}

export default PlanetDetail;
