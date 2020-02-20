module.exports = app => {

// 
app.post('/universe/loadbyid', app.controllers.universe.loadById);
// 
app.post('/universe/loadAll', app.controllers.universe.loadAll);
// 
app.post('/universe/deleteship', app.controllers.universe.deleteShip);
// 
app.post('/universe/addship', app.controllers.universe.addShip);
// 
app.post('/universe/launchattack', app.controllers.universe.launchAttack);
};