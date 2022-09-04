const multer = require('multer')
const path =  require('path')

const avatars = multer.diskStorage({
    destination: function (req, file, cb) {
      cb(null, path.join(__dirname, '../modules/admin/avatars'))
    },
    filename: function (req, file, cb) {
      const uniqueSuffix = Date.now() + '-' + Math.round(Math.random() * 1E9)
      cb(null, file.fieldname + '-' + uniqueSuffix + path.extname(file.originalname))
    }
  })
  



  const postImgs = multer.diskStorage({
    destination: function (req, file, cb) {
      cb(null, path.join(__dirname, '../modules/posts/postsImgs'))
    },
    filename: function (req, file, cb) {
      const uniqueSuffix = Date.now() + '-' + Math.round(Math.random() * 1E9)
      cb(null, file.fieldname + '-' + uniqueSuffix + path.extname(file.originalname))
    }
  })


  const foodsImgs = multer.diskStorage({
    destination: function (req, file, cb) {
      cb(null, path.join(__dirname, '../modules/foods/foodImgs'))
    },
    filename: function (req, file, cb) {
      const uniqueSuffix = Date.now() + '-' + Math.round(Math.random() * 1E9)
      cb(null, file.fieldname + '-' + uniqueSuffix + path.extname(file.originalname))
    }
  }) 

  const msmImgs = multer.diskStorage({
    destination: function (req, file, cb) {
      cb(null, path.join(__dirname, '../modules/foods/foodImgs'))
    },
    filename: function (req, file, cb) {
      const uniqueSuffix = Date.now() + '-' + Math.round(Math.random() * 1E9)
      cb(null, file.fieldname + '-' + uniqueSuffix + path.extname(file.originalname))
    }
  }) 

  const profileUpload = multer({ storage: avatars })
  const postsUpload = multer({ storage: postImgs })
  const foodsUpload = multer({ storage: foodsImgs })
  const messageUpload = multer({ storage: msmImgs })

  module.exports = {
    profileUpload, postsUpload, foodsUpload, messageUpload
  }