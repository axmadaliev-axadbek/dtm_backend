const Jwt = require('jsonwebtoken');
const {SECRET} = require('../config.js')

module.exports = {
    sign: (payload) => Jwt.sign(payload, SECRET),
    verify: (payload) => Jwt.verify(payload, SECRET)
    
}