import React, { Component } from 'react'
import { Link } from 'react-router-dom'
import EventList from './EventList'
import Footer from './Footer'
import RoundedBlock from './RoundedBlock'
import QrCodeIcon from '../assets/qr-code-icon.png'
import CreditCardIcon from '../assets/credit-card-icon.png'

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
      <div className="links">
       <Link to='#' onClick={this.props.handleLogout}>Logout</Link>
      </div>
      :
      <div className="links">
       <Link to="/login">Login</Link><br />
       <Link to="/register">Register</Link><br />
       {/* <Link to="/test">test</Link> */}
      </div>
    }
    {this.props.currentUser && <EventList />}
    {this.props.currentUser && <Footer>
     <Link to="/ticketview">
      <RoundedBlock
       text="Ticket"
       img={QrCodeIcon}
       alt="qr code"
      />
     </Link>
     <RoundedBlock
      text="Scan To Pay"
      img={CreditCardIcon}
      alt="credit card"
     />
    </Footer>}
   </div>
  )
 }
}
