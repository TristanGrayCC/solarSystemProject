import React from 'react'
import { Link } from 'react-router'
import PlanetDetail from './PlanetDetail'

const Home = () => (
  <div className="home">
    <h1 className='title'>The Solar System</h1>
    <PlanetDetail/>
  </div>
)

export default Home
