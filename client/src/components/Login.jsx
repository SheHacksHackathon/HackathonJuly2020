import React, { Component } from 'react'
import { withRouter, Link } from 'react-router-dom'
import Button from './Button'
class Login extends Component {

 state = {
  username: "",
  password: ""
 }

 handleChange = (e) => {
  const { name, value } = e.target;
  this.setState({
   [name]: value
  })
 }

 handleSubmit = (e) => {
  e.preventDefault()
  this.props.handleLoginSubmit(this.state)
  // alert('test submit')
  this.setState({
   username: "",
   password: ""
  })
  this.props.history.push('/')
 }

 render() {
  return (
   <div className="Login">
    <h2>
     <Link to="/"><span>←</span></Link>
     Login
     </h2>
    <form
     onSubmit={this.handleSubmit}
     className="login-form"
    >
     <label htmlFor="username">Username
     <input
       type="text"
       name="username"
       value={this.state.username}
       onChange={this.handleChange}
       placeholder="Enter Username"
      />
     </label>
     <label htmlFor="password">Password
      <input
       type="password"
       name="password"
       value={this.state.password}
       onChange={this.handleChange}
       placeholder="Enter Password"
      />
     </label>
     <Button
      // handleClick={this.handleSubmit}
      buttonText="LOGIN"
     />

    </form>
   </div>
  )
 }
}
export default withRouter(Login)
