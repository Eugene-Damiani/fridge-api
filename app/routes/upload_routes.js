const express = require('express')
const multer = require('multer')
const storage = multer.memoryStorage()
const upload = multer({ storage })
const Upload = require('../models/upload')
const router = express.Router()
const passport = require('passport')
const requireToken = passport.authenticate('bearer', { session: false })
const s3Upload = require('../../lib/s3_upload')

router.post('/uploads', requireToken, upload.single('upload'), (req, res, next) => {
  console.log(req.file)
  s3Upload(req.file)
    .then(awsFile => {
      console.log(awsFile)
      return Upload.create({ owner: req.user.id, url: awsFile.Location })
    })
    .then(uploadDoc => {
      res.status(201).json({ upload: uploadDoc })
    })
    .catch(next)
})

// SHOW
// GET /s/5a7db6c74d55bc51bdf39793
router.get('/uploads/:id', requireToken, (req, res, next) => {
  // req.params.id will be set based on the `:id` in the route
  Upload.findById(req.params.id)
    // if `findById` is succesful, respond with 200 and "" JSON
    .then(uploads => res.status(200).json({ uploads: uploads.toObject() }))
    // if an error occurs, pass it to the handler
    .catch(next)
})

// INDEX
router.get('/uploads/', requireToken, (req, res, next) => {
  Upload.find({owner: req.user.id})
    .then(uploads => {
      return uploads.map(upload => upload.toObject())
    })
    // respond with status 200 and JSON
    .then(uploads => res.status(200).json({ uploads: uploads }))
    // if an error occurs, pass it to the handler
    .catch(next)
})

module.exports = router
