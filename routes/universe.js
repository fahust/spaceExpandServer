module.exports = app => {

// CREATE USER
app.post('/universe/load', app.controllers.universe.loadById);
};