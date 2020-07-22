import React, { Component } from 'react'
import RoundedBlock from './RoundedBlock'
import CircleBlock from './CircleBlock'

export default class EventList extends Component {
 render() {
  return (
   <div className="EventList">
    <h2>Upcoming Events</h2>
    <RoundedBlock text="MasterCard Super Bowl Party">
     <CircleBlock text="RSVP" />
    </RoundedBlock>

    <h2>Past Events</h2>
    <RoundedBlock text="MasterCard MLB Party">
     <CircleBlock text="xx" />
    </RoundedBlock>

   </div>
  )
 }
}
