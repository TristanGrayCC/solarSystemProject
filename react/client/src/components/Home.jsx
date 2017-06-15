import React from 'react'
import PlanetDetail from './PlanetDetail'
import { Link } from 'react-router'

const Home = () => (
  <div className="home">
    <h1 className='title'>The Solar System</h1>
    <PlanetDetail/>
  </div>
)

export default Home
