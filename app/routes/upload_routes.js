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
  req.body.item.owner = req.user.id
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

module.exports = router
