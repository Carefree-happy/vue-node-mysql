const express = require('express');
const mongoose = require('mongoose');

const productRoute = require("./routes/product.route.js");

const app = express()

// middleware
app.use(express.json());
app.use(express.urlencoded({extended: false}));

// routes
app.use("/api/products", productRoute);

app.get('/', function (req, res) {
  res.send('Server is running on port 300')
})

mongoose
  .connect(
    'mongodb+srv://admin:0Al2C37FwcWbeagS@atlascluster.xdkvu.mongodb.net/?retryWrites=true&w=majority&appName=AtlasCluster'
  )
  .then(() => {
    console.log("Connected to database!");
    app.listen(3000, () => {
      console.log("Server is running on port 3000");
    });
  })
  .catch(() => {
    console.log("Connection failed!");
  });