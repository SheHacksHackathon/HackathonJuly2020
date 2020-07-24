import React from 'react'
import RoundedBlock from './RoundedBlock'
import TicketQrCode from '../assets/ticket-qr-code.png'
import AppleWallet from '../assets/apple-wallet.png'
import QrCodeIcon from '../assets/qr-code-icon.png'
import CreditCardIcon from '../assets/credit-card-icon.png'
import { Link } from 'react-router-dom'
import Footer from './Footer'

export default function TicketView(props) {
 return (
  <div className="TicketView">
   <RoundedBlock>
    <div className="ticket-name">MasterCard Super Bowl</div>
    <div className="ticket-type">VIP Pass</div>
    <div className="date-time">
     <span className="date">03 February 2021</span>
     <span className="spacer">|</span>
     <span className="time">3:00pm ET</span>
    </div>
    <div className="ticket-cutout"></div>
    <div className="qr-code">
     <img src={TicketQrCode} alt="QR Code" />
    </div>
    <div className="instructions">Scan in and out of the<br />VIP Sky Box</div>
    <div className="apple-wallet">
     <img src={AppleWallet} alt="Apple Wallet" />
    </div>


   </RoundedBlock>
   {props.currentUser && <Footer>
    <Link to="/ticketview">
     <RoundedBlock
      text="Ticket"
      img={QrCodeIcon}
      alt="qr code"
     />
    </Link>
    <RoundedBlock
     text="Scan To Pay"
     img={CreditCardIcon}
     alt="credit card"
    />
   </Footer>}
  </div>
 )
}
