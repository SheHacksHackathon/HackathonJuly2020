import React from 'react';
import './App.scss';
import Login from './components/Login';
import { Link, Route } from 'react-router-dom'
import Register from './components/Register';
import Test from './components/Test';

function App() {
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
    <Login />
   </Route>
   <Route exact path="/register">
    <Register />
   </Route>
   <Route exact path="/test">
    <Test />
   </Route>
  </div>
 );
}

export default App;
