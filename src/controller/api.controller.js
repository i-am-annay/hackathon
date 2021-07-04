const APIModel = require("../model/api.model.js");

// get all orders in the database
exports.getDriverById = (req, res) => {
  // console.log('Here is the list of all the orders in the database');
  APIModel.getDriver(req.params.id, (err, orders) => {
    console.log("We Are Inside getAllOrders Method");
    if (err) {
      res.send(err);
    } else {
      console.log("Driver", orders);
      res.send(orders);
    }
  });
};

// order information by supply Id (driver Id)
exports.getCompletetionRateBySupplyId = (req, res) => {
  //   console.log("Getting Empoyee By Idd");
  APIModel.getCompletetionRate(req.params.id, (err, items) => {
    if (err) res.send(err);

    var total_orders = 0;
    var completed_orders = 0;
    var logs = {
      Error: "Invalid Driver Id",
    };
    console.log("WOW WOW WOW!");
    if (items.length === 0) {
      res.send(logs);
      return;
    }
    items.forEach((item) => {
      if (item.status === "COMPLETED") {
        completed_orders = item.count;
      }
      total_orders += item.count;
    });
    console.log(total_orders);
    console.log(completed_orders);
    var data = {
      comletion_rate: 0.85,
      message: "Please complete more to get more requests.",
    };
    if (total_orders === 10) {
      var completition_rate = completed_orders / total_orders;
      if (completition_rate > 0 && completition_rate <= 0.5) {
        data.comletion_rate = completition_rate;
        data.message =
          "Your completion rate is very low. You will get suspended if you do not increase your completion rate.";
      } else if (completition_rate > 0.5 && completition_rate <= 0.7) {
        data.comletion_rate = completition_rate;
        data.message =
          "Your completion rate is low. You will get less requests if you do not increase your completion rate.";
      } else if (completition_rate > 0.7 && completition_rate <= 1.0) {
        data.comletion_rate = completition_rate;
        data.message = "Please complete more to get more requests.";
      }
    }
    console.log("Sending Completetion Rate of A Single Driver");
    res.send(data);
  });
};

// create a new driver
exports.createNewDriver = (req, res) => {
  console.log("Creating A New Driver");
  console.log(req.body);
  const driverReqData = new APIModel.Driver(req.body);

  if (req.body.constructor === Object && Object(req.body).length === 0) {
    res
      .send(400)
      .send({ success: false, message: "Please Fill up all the fields" });
  } else {
    console.log("Data is Valid");
    APIModel.Driver.createDriver(driverReqData, (err, driver) => {
      if (err) res.send(err);
      res.json({
        status: true,
        message: "Driver Inserted Successfully!",
        insertId: res.id,
      });
    });
  }
};
