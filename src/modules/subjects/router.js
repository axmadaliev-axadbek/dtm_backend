const router = require('express').Router()
const controller = require('./controllers.js')

router.get('/subjects', controller.GETALL)
router.get('/subjects/:id', controller.GETALL)

router.get('/firstSubjects', controller.GETALL)



module.exports = router