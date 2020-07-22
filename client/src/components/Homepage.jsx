import React, { Component } from 'react'
import { Link } from 'react-router-dom'
import EventList from './EventList'

export default class Homepage extends Component {
 render() {
  return (
   <div className="Homepage">
    {/* <h1>App Name Placeholder</h1> */}
    <div className="welcome-msg">
     Hello {
      this.props.currentUser
       ?
       this.props.currentUser.username
       :
       'Guest'
     }!
   </div>
    {
     this.props.currentUser
      ?
      <>
       <Link to='#' onClick={this.props.handleLogout}>Logout</Link>
      </>
      :
      <>
       <Link to="/login">Login</Link><br />
       <Link to="/register">Register</Link><br />
       <Link to="/test">test</Link>
      </>
    }
    {this.props.currentUser && <EventList />}
   </div>
  )
 }
}
