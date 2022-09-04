const router = require('express').Router()
const controller = require('./controllers.js')

router.get('/faculties', controller.GETALL)
router.get('/faculties/:id', controller.GETALL)

router.get('/firstSubjects', controller.GETALL)



module.exports = router