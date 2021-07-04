var dbConn = require("../../config/db.config");

var Driver = function (driver) {
  this.driver_id = driver.driver_id;
  this.nid = driver.nid;
  this.name = driver.name;
  this.phone = driver.phone;
  this.vehicle_id = driver.vehicle_id;
};

// getting all employees
getDriver = (id, result) => {
  dbConn.query(`SELECT * FROM drivers WHERE driver_id = ${id}`, (err, res) => {
    if (err) {
      console.log("Error while fetching driver information! " + err.message);
      result(err, null);
    } else {
      console.log("Driver Information Fetched Successfully");
      result(null, res);
    }
  });
};

// get employee from database by ID
getCompletetionRate = (id, result) => {
  dbConn.query(
    `SELECT status, COUNT(status) as count FROM (SELECT driver_id, status, timestamp FROM orders WHERE driver_id = ${id} ORDER BY timestamp DESC LIMIT 10) as sub  GROUP BY status;`,
    (err, res) => {
      if (err) {
        console.log("Error While Fetching Supplies on Driver Id", err);
        result(null, err);
      } else {
        result(null, res);
      }
    }
  );
};

// create new Employee
Driver.createDriver = (driverData, result) => {
  console.log(driverData);
  dbConn.query(
    `INSERT INTO drivers (nid, name, phone, vehicle_id) VALUES (${JSON.stringify(
      driverData.nid
    )},${JSON.stringify(driverData.name)},${JSON.stringify(
      driverData.phone
    )},${JSON.stringify(driverData.vehicle_id)});`,
    driverData,
    (err, res) => {
      if (err) {
        console.log("Error While Sending Data", err);
        result(null, err);
      } else {
        console.log("Driver Inserted into the database");
        result(null, res);
      }
    }
  );
};

module.exports = {
  getDriver: getDriver,
  getCompletetionRate: getCompletetionRate,
  Driver: Driver,
};
