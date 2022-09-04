const router = require('express').Router()
const controller = require('./controllers.js')

router.get('/users', controller.GETALL)
router.get('/users/:id', controller.GETALL)

router.post('/users/login', controller.LOGIN)
router.post('/users/register',  controller.REGISTER)


module.exports = router