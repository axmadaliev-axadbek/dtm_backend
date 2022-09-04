const express = require('express');
const app = express();
const PORT = process.env.PORT || 7000
const path =require('path');
const modules = require('./modules/index.js');
const cors = require('cors')
var bodyParser = require("body-parser");
var fileUpload = require('express-fileupload')


app.use(fileUpload({ createParentPath: true }));

app.use(cors())
app.use(express.json())
app.use(express.urlencoded({extended: true}))
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static("*"));

app.use(modules)

app.listen(PORT, ()=> console.log(`${PORT} runnig`))


