const router = require('express').Router()
const controller = require('./controllers.js')

router.get('/result/:userId', controller.getByUserId)
router.get('/result', controller.getByResultId)
router.get('/results/highest', controller.getHighestResults)
router.post('/result', controller.postResults)





module.exports = router