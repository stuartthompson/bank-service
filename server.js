const express = require('express');
const app = express();

const port = 3000;

app.get('/', (req, res) => {
    res.send('Hello from Express, NodeJS!');
});

app.get('/accounts', (req, res) => {
    res.send('Account list here');
});

app.listen(port, () =>  {
    console.log('Server is running on port ' + port);
});