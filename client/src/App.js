import React, { Component } from 'react';
import './App.scss';
import Login from './components/Login';
import { Route, withRouter } from 'react-router-dom'
import Register from './components/Register';
import TicketView from './components/TicketView';
import { loginUser, registerUser, removeToken, verifyUser } from './services/auth'
import Homepage from './components/Homepage';

class App extends Component {

 state = {
  currentUser: null
 }

 componentDidMount() {
  this.handleVerify()
 }

 handleLoginSubmit = async (loginData) => {
  const currentUser = await loginUser(loginData)
  this.setState({ currentUser })
 }

 handleRegisterSubmit = async (registerData) => {
  console.log(registerData)
  const currentUser = await registerUser(registerData)
  this.setState({ currentUser })
 }

 handleLogout = () => {
  this.setState({
   currentUser: null
  })
  localStorage.clear()
  removeToken()
  this.props.history.push('/')
 }

 handleVerify = async () => {
  const currentUser = await verifyUser()
  this.setState({ currentUser })
 }


 render() {
  return (

   <div className="App">
    <Route exact path="/">
     <Homepage
      currentUser={this.state.currentUser}
      handleLogout={this.handleLogout}
     />
    </Route>
    <Route exact path="/login">
     <Login
      handleLoginSubmit={this.handleLoginSubmit}
     />
    </Route>
    <Route exact path="/register">
     <Register
      handleRegisterSubmit={this.handleRegisterSubmit}
     />
    </Route>
    <Route exact path="/ticketview">
     <TicketView />
    </Route>
   </div>
  )
 }
}

export default withRouter(App)