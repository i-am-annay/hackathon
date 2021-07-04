const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");

// create express app
const app = express();

// setup the server port
const port = process.env.APP_PORT || 8080;

// using cors
app.use(cors());

// parse request data content type application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }));

// parse request data content type application/json
app.use(bodyParser.json());

// import api route
const apiRoutes = require("./src/routes/api.routes");

// create supply routes;
app.use("/api/supply", apiRoutes);

// define root route
app.get("/", (req, res) => {
  res.send("Hello World");
});
// listen to port
app.listen(port, () => {
  console.log(`Express server running at port ${port}`);
});
