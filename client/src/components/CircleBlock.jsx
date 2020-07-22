import React from 'react'

export default function CircleBlock(props) {
 return (
  <div className="CircleBlock">
   <span className="text">
    {props.text}
   </span>
   <span className="children">
    {props.children}
   </span>
  </div>
 )
}
