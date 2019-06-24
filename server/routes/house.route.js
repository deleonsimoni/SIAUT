const express = require('express');
const asyncHandler = require('express-async-handler')
const passport = require('passport');
const userCtrl = require('../controllers/user.controller');
const houseCtrl = require('../controllers/house.controller');
const authCtrl = require('../controllers/auth.controller');

const router = express.Router();
module.exports = router;

// INICIO - Rotas para a casa do usuario
router.post('/registerHouse', passport.authenticate('jwt', { session: false }), registerHouse);
router.get('/getHouse', passport.authenticate('jwt', { session: false }), getHouse);
// FIM - Rotas para a casa do usuario

// INICIO - Rotas para os comodos da casa
router.post('/registerRooms', passport.authenticate('jwt', { session: false }), asyncHandler(registerRoom));
router.get('/getRoom', passport.authenticate('jwt', { session: false }), getRoom);
// INICIO - Rotas para os comodos da casa

// INICIO - Rotas para os devices da casa
router.post('/registerDevices', passport.authenticate('jwt', { session: false }), registerDevice);
router.get('/getDevice', passport.authenticate('jwt', { session: false }), getDevice);
// INICIO - Rotas para os devices da casa
  
async function registerHouse(req, res, next) {
  console.log('Recuperando Usuario');
  let user = await userCtrl.getUserById(req.body.userId);
  console.log('Usuario Recuperado');

  console.log('Cadastrando Casa');
  let house = await houseCtrl.insertHouse(req.body.house);
  console.log('Casa Cadastrada');

  console.log('VincularUsuario/Casa');
  user.houses.push(house);

  user = await userCtrl.insertUser(user);

  house = house.toObject();
  res.json({house, user});
}

async function getHouse(req, res, next) {

  console.log('Buscando Casa');
  let house = await houseCtrl.getHouse(req.body.houseId);
  console.log('Casa recuperada');

  res.json(house);
}

async function registerRoom(req, res, next) {
  console.log('Recuperando Casa');
  let house = await houseCtrl.getHouse(req.body.houseId);
  console.log('Casa Recuperado');

  console.log('Cadastrando Comodo');
  let rooms = await houseCtrl.insertRoom(req.body.rooms, house);
  console.log('Comodo Cadastrado');

  await res.json({house, rooms});
}

async function getRoom(req, res, next) {

  console.log('Buscando Comodo');
  let room = await houseCtrl.getRoom(req.body.roomId);
  console.log('Comodo recuperada');

  res.json(room);
}

async function registerDevice(req, res, next) {
  console.log('Recuperando Comodo');
  let room = await houseCtrl.getRoom(req.body.roomId);
  console.log('Comodo Recuperado');

  console.log('Cadastrando device');
  let device = await houseCtrl.insertDevice(req.body.devices, room);
  console.log('device Cadastrado');

  res.json({room, house});
}

async function getDevice(req, res, next) {

  console.log('Buscando Device');
  let device = await houseCtrl.getDevice(req.body.deviceId);
  console.log('Device recuperada');

  res.json(device);
}

