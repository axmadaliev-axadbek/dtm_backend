const router = require('express').Router()
const controller = require('./controllers.js')

router.get('/universities', controller.GETALL)
router.get('/universities/:id', controller.GETALL)

router.get('/universities?firstSubject&secondSubject', controller.GETALL)

module.exports = router