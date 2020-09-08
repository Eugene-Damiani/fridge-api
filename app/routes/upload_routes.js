const express = require('express')
// pull in Mongoose model for s
const Upload = require('../models/upload')
const router = express.Router()
const passport = require('passport')
const requireToken = passport.authenticate('bearer', { session: false })

router.get('/uploads', (req, res, next) => {
  Upload.find({owner: req.user.id})
    .then(uploads => {
      // `s` will be an array of Mongoose documents
      // we want to convert each one to a POJO, so we use `.map` to
      // apply `.toObject` to each one
      return uploads.map(upload => upload.toObject())
    })
    // respond with status 200 and JSON of the s
    .then(upload => res.status(200).json({ uploads: upload }))
    // if an error occurs, pass it to the handler
    .catch(next)
})

// CREATE
// POST
router.post('/uploads', requireToken, (req, res, next) => {
  // set owner of new  to be current user
  req.body.upload.owner = req.user.id

  Upload.create(req.body.upload)
    // respond to succesful `create` with status 201 and JSON of new ""
    .then(upload => {
      res.status(201).json({ upload: upload.toObject() })
    })
    // if an error occurs, pass it off to our error handler
    // the error handler needs the error message and the `res` object so that it
    // can send an error message back to the client
    .catch(next)
})

module.exports = router
