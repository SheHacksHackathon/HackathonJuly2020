import React from 'react'

export default function RoundedBlock(props) {
 return (
  <div className="RoundedBlock">
   <span className="text">
    {props.text}
   </span>
   <span className="children">
    {props.children}
   </span>
  </div>
 )
}
