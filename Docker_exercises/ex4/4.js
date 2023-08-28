const axios = require('axios');
const moment = require('moment');

const inputDate = process.argv[2]; 
const parsedDate = moment(inputDate);
const formattedDate = parsedDate.format('YYYY/MM/DD'); 

console.log(`Input Date: ${inputDate}`);
console.log(`Formatted Date: ${formattedDate}`);

axios.get('https://jsonplaceholder.typicode.com/posts/1')
  .then(response => {
    console.log('API Response:', response.data);
  })
  .catch(error => {
    console.error('API Error:', error);
  });
