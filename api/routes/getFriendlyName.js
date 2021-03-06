let express = require('express');
let router = express.Router();
let mysql = require('mysql');
let db = require('./database');

// Returns the friendly name of a given device
router.get('/', function (req, res) {
    let sql =  "SELECT FriendlyName FROM powermonitoring.devices WHERE DeviceID = ?;";
    let params = [req.get('device')];

    // Generate and run SQL query on DB
    db.conn.query(mysql.format(sql, params), function (err, result) {
        res.send(result);
    });
});

module.exports = router;
