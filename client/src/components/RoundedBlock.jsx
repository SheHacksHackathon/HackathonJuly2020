import React from 'react'

export default function RoundedBlock(props) {
 return (
  <div className="RoundedBlock">
   {props.img && props.alt &&
    <img src={props.img} alt={props.alt} />}
   {props.text &&
    <span className="text">
     {props.text}
    </span>}
   <span className="children">
    {props.children}
   </span>
  </div>
 )
}
