import React from 'react'
import Button from './Button'

export default function Login() {
 const handleSubmit = (e) => {
  e.preventDefault()
  alert('submit test')
 }
 return (
  <div>
   <form>
    <input
     type="text"
     name=""
     id=""
     placeholder="username"
    />
    <Button
     handleClick={handleSubmit}
     buttonText="test button"
    />
   </form>
  </div>
 )
}
