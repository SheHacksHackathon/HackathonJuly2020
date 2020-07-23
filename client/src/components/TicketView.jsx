import React from 'react'
import RoundedBlock from './RoundedBlock'
import TicketQrCode from '../assets/ticket-qr-code.png'

export default function TicketView() {
 return (
  <div className="TicketView">
   <RoundedBlock>
    <div className="ticket-name">MasterCard Super Bowl</div>
    <div className="ticket-type">VIP Pass</div>
    <div className="date-time">
     <span className="date">03 February 2021</span>
     |
     <span className="time">3:00pm ET</span>
     <img className="qr-code" src={TicketQrCode} alt="qr code" />
     <div className="instructions">Scan in and out of the VIP Sky Box</div>
    </div>

   </RoundedBlock>
  </div>
 )
}
