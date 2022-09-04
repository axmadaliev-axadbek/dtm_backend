const dotenv = require('dotenv')
dotenv.config()

// const SECRET = process.env.JWT_SEKRET
const SECRET = 'olma'
const pgConfig = {
    host: process.env.HOST,
    port: process.env.PGPORT,
    database: process.env.DATABSASE,
    user: process.env.USER,
    password: process.env.PASSWORD
}

module.exports = {
    pgConfig, SECRET
}