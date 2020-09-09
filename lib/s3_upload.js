require('dotenv').config()
const AWS = require('aws-sdk')
const s3 = new AWS.S3()
module.exports = function (file) {
  console.log(file.mimetype)
  const uploadParams = {
    Bucket: 'fridgetracker-bucket',
    Key: new Date().getTime() + '_' + file.originalname,
    Body: file.buffer,
    ACL: 'public-read',
    ContentType: file.mimetype
  }
  return s3.upload(uploadParams).promise()
}
