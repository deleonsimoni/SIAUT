const mongoose = require('mongoose');

const Housechema = new mongoose.Schema({
  name: {
    type: String,
    required: true
  },
  icon: {
    type: String
  },
  createdAt: {
    type: Date,
    default: Date.now
  }
});


module.exports = mongoose.model('House', HouseSchema);
