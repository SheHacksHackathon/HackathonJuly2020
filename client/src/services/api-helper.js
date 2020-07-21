import axios from 'axios';

const baseUrl = process.env.NODE_ENV === 'production' ? 'https://ycc-journal-app.herokuapp.com' : 'http://localhost:3000'
// EDIT ABOVE LINE WITH FINAL PRODUCTION URL LATER

const api = axios.create({
 baseURL: baseUrl
})

export default api;
