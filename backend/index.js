
const express = require('express');
const bodyParser = require('body-parser');
const mongoose = require('mongoose');
const authRoutes = require('./src/routes/auth');

const app = express();
const port = 3000;
const mongoURI = 'mongodb+srv://SEMS23:Enj3QRcVhMidlcsO@cluster0.ro6qr9v.mongodb.net/yourdbname'; 

mongoose.connect(mongoURI, { useNewUrlParser: true, useUnifiedTopology: true });

app.use(bodyParser.json());

// Use the auth routes
app.use('/auth', authRoutes);

app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});

