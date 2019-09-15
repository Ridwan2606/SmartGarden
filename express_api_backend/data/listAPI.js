var listAPI = {
    "/api/all_measurements" : " [GET] Retrieve all measurements from the database.",
    "/api/new_records" : " [GET] Retrieve all unfetched measurements from the database WITHOUT UPDATING.",
    "/api/new_records_update": " [GET] Retrieve all unfetched measurements from the database WITH UPDATE.",
    "/api/current_record" : " [GET] Retrieve the most current measurements from the database WITHOUT UPDATING." ,
    "/api/current_record_update": " [GET] Retrieve the most current measurements from the database WITHOUT UPDATING.",
    "/api/add_record": " [POST] Add a new measurement in the database"
};

module.exports = listAPI