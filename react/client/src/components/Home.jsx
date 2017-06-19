import React from 'react'
import { Link } from 'react-router'
import Planet from './Planet'
import Menu from './Menu'

const Home = () => (
  <div className="home">
    <h1 className='title'>The Solar System</h1>
    <Planet/>
    <Menu/>
  </div>
)

export default Home
