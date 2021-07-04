const express = require("express");
const router = express.Router();
const apiController = require("../controller/api.controller");

// get all orders
router.get("/driver/:id", apiController.getDriverById);
// get completition rate by supply id
router.get("/:id", apiController.getCompletetionRateBySupplyId);
// create new driver
router.post("/driver", apiController.createNewDriver);

module.exports = router;
