const express = require('express')
const morgan = require('morgan')
const bodyParser = require('body-parser')
const mysql = require ("mysql")
const basicAuth = require('express-basic-auth')
const authDetails= require('../data/authDetails')
const dbDetails = require('../data/dbdetails.js')
const listAPI = require('../data/listAPI')
const app = express()


app.use(morgan('short'))
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({extended: true}))
app.use(basicAuth(authDetails))

router = express.Router()

function sqlConnect (){
    return  mysql.createConnection( dbDetails )
}

router.get('/',(req,res)=>
{
    res.send(listAPI)
}
)

//fetches all measurements from the sql database
router.get('/all_measurements', (req, res) => 
{
   
    connection = sqlConnect()
    connection.connect()

    queryString = "call smartgarden.SELECTALL"

    connection.query(queryString, (err,rows, fields) => 
    {
        if (err){
            console.log (err)
            res.status(500).send("Could not fetch data")
        } else {
            console.log ("Fetched users successfully: ")
            console.log(rows)
            res.send(rows[0])
        }
    })

    connection.end()
}
)

//FETCHES FROM THE DATABASE THE MOST CURRENT RECORD (WITHOUT UPDATING)
router.get('/current_record',(req,res) =>
    {
        
        connection = sqlConnect()
        connection.connect()
        
       queryString= `call smartgarden.SELECTLAST(1)`

       connection.query(queryString, (err,rows, fields) => 
       {
           if (err){
               console.log (err)
               res.status(500).send("Could not fetch the most current record")
           } else {
               console.log ("Fetched new records successfully: ")
               console.log(rows)
               res.send(rows[0])
           }
       }
       )
       connection.end()
    }
)

//FETCHES FROM THE DATABASE THE MOST CURRENT RECORD (WITH UPDATING)
router.get('/current_record_update',(req,res) =>
    {
        connection = sqlConnect()
        connection.connect()
        
       queryString= `call smartgarden.SELECTLASTUPDATE(1)`

       connection.query(queryString, (err,rows, fields) => 
       {
           if (err){
               console.log (err)
               res.status(500).send("Could not fetch the most current record")
           } else {
               console.log ("Fetched new records successfully: ")
               console.log(rows)
               res.send(rows[0])
           }
       }
       )
       connection.end()
    }
)

//FETCHES FROM THE DATABASE THE LAST MOST CURRENT RECORDS ACCORDING TO id PASSED IN ROUTE (WITHOUT UPDATING)
router.get('/current_records/:id',(req,res) =>
    {
        connection = sqlConnect()
        connection.connect()
        
       queryString= `call smartgarden.SELECTLAST(${req.params.id})`

       connection.query(queryString, (err,rows, fields) => 
       {
           if (err){
               console.log (err)
               res.status(500).send("Could not fetch the most current records")
           } else {
               console.log ("Fetched new records successfully: ")
               console.log(rows)
               res.send(rows[0])
           }
       }
       )
       connection.end()
    }
)


//FETCHES FROM THE DATABASE THE LAST MOST CURRENT RECORDS ACCORDING TO id PASSED IN ROUTE (WITH UPDATING)
router.get('/current_records_update/:id',(req,res) =>
    {
        connection = sqlConnect()
        connection.connect()
        
       queryString= `call smartgarden.SELECTLASTUPDATE(${req.params.id})`

       connection.query(queryString, (err,rows, fields) => 
       {
           if (err){
               console.log (err)
               res.status(500).send("Could not fetch the most current records")
           } else {
               console.log ("Fetched new records successfully: ")
               console.log(rows)
               res.send(rows[0])
           }
       }
       )
       connection.end()
    }
)

//FETCHES FROM THE DATABASE ALL UNFETCHED RECORDS (WITHOUT UPDATING)
router.get('/new_records',(req,res) =>
    {
        connection = sqlConnect()
        connection.connect()
        
       queryString= `call smartgarden.FETCHNEW`

       connection.query(queryString, (err,rows, fields) => 
       {
           if (err){
               console.log (err)
               res.status(500).send("Could not fetch new records")
           } else {
               console.log ("Fetched new records successfully: ")
               console.log(rows)
               res.send(rows[0])
           }
       }
       )
       connection.end()
    }
)

//FETCHES FROM THE DATABASE ALL UNFETCHED RECORDS (WITH UPDATING)
router.get('/new_records_update',(req,res) =>
    {
        connection = sqlConnect()
        connection.connect()
        
       queryString= `call smartgarden.FETCHNEWUPDATE`

       connection.query(queryString, (err,rows, fields) => 
       {
           if (err){
               console.log (err)
               res.status(500).send("Could not fetch new records")
           } else {
               console.log ("Fetched new records successfully: ")
               console.log(rows)
               res.send(rows[0])
           }
       }
       )
       connection.end()
    }
)

// Adds a new record to the sql database
router.post('/add_record', (req,res) => 
    {
        var newRecord = {
            temp: req.body.temp,
            fan: req.body.fan,
            timestamp: req.body.timestamp
        };
        
        connection = sqlConnect()
        connection.connect()
        
       queryString= `call smartgarden.ADDRECORD(${newRecord.temp},"${newRecord.fan}","${newRecord.timestamp}")`

       connection.query(queryString, (err,rows, fields) => 
       {
           if (err){
               console.log (err)
               res.status(500).send("Could not add record")
           } else {
               console.log ("Added record successfully: ")
               console.log(rows)
               res.send("Added record succesfully")
           }
       }
       )
       connection.end()
    }
)

module.exports = router