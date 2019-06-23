const bcrypt = require('bcrypt');
const Joi = require('joi');
const House = require('../models/house.model');
const Device = require('../models/device.model');
const Room = require('../models/room.model');

module.exports = {
  insertRoom,
  insertDevice,
  insertHouse,
  getHouse,
  getDevice,
  getRoom
}

async function insertRoom(rooms, house) {

  await Room.collection.insert(rooms, function (err, docs) {
    if (err){ 
        return console.error(err);
    } else {
      house.rooms.push.apply(house.rooms, docs.ops);
      new House(house).save();
      console.log("Todos os Comodos cadastrados com sucesso");
    }
  });

  return await house.rooms;
}

async function insertDevice(devices, rooms) {

  Device.collection.insert(devices, function (err, docs) {
    if (err){ 
        return console.error(err);
    } else {
      rooms.devices.push.apply(docs.ops);
      new Room(rooms).save();
      console.log("Todos devices cadastrados com sucesso");
    }
  });

  return await devicesReturn;
}

async function insertHouse(house) {
  return await new House(house).save();
}

async function getRoom(id) {
  return await Room.findById(id, function(err, room) {  
    if (err) {  
      console.error('Erro de busca do cômodo ' + err);  
    }
    return room;  
  })  
} 

async function getDevice(id) {
  console.log('Buscando Casa por Id: ' + id);
  return await Device.findById(id, function(err, device) {  
    if (err) {  
      console.error('Erro de busca do device ' + err);  
    }
    return device;  
  })  
}

async function getHouse(id) {
  console.log('Buscando Casa por Id: ' + id);
  return await House.findById(id, function(err, house) {  
    if (err) {  
      console.error('Erro de busca da house ' + err);  
    }
    return house;  
  })  
}