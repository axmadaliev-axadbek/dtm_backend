const router = require('express').Router()
const controller = require('./controllers.js')

router.get('/tests', controller.GETALL)
router.get('/tests/:id', controller.GETALL)

router.get('/firstSubjects', controller.GETALL)



module.exports = router