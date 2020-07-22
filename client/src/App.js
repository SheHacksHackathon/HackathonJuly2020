import React, { Component } from 'react';
import './App.scss';
import Login from './components/Login';
import { Link, Route, withRouter } from 'react-router-dom'
import Register from './components/Register';
import Test from './components/Test';
import { loginUser, registerUser, removeToken, verifyUser } from './services/auth'

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
     <div className="homepage">
      <h1>App Name Placeholder</h1>
      <Link to="/login">Login</Link><br />
      <Link to="/register">Register</Link><br />
      <Link to="/test">test</Link>
     </div>
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
    <Route exact path="/test">
     <Test />
    </Route>
   </div>
  )
 }
}

export default withRouter(App)