# hackathon
# Details
Implements an API that can
  - Caclulate Completition rate for a given supplyId/driverId from a MySQL database.
  - Fetch Driver information from the database.
  - Insert Driver information into the database.

#Breakdown
Implementation done by using: Node.js, Express and MySQL

# Bugs 
drivers and orders table are not cascaded, deleting drivers does not delete corresponding order.

#Future plans
Fix bugs. Convert into a full stack application to fully demonstrate the API backend.
