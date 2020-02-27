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
app.post('/universe/addshipmultipleship', app.controllers.universe.addShipMultipleShip);
// 
app.post('/universe/deleteDefense', app.controllers.universe.deleteDefense);
// 
app.post('/universe/addDefense', app.controllers.universe.addDefense);
// 
app.post('/universe/addTechnologie', app.controllers.universe.addTechnologie);
// 
app.post('/universe/launchattack', app.controllers.universe.launchAttack);
// 
app.post('/universe/transferShip', app.controllers.universe.transferShip);

// 
app.post('/universe/addressourcebyshipevent', app.controllers.universe.addRessourceByShipEvent);
// 
app.post('/universe/loadusersscore', app.controllers.universe.loadUsersScore);
// 
app.post('/universe/setusersscore', app.controllers.universe.setUsersScore);
// 
app.post('/universe/addmessage', app.controllers.universe.addMessage);
// 
app.post('/universe/loadlasttenmessage', app.controllers.universe.loadLastTenMessage);
// 
app.post('/universe/addguild', app.controllers.universe.addGuild);
// 
app.post('/universe/loadguild', app.controllers.universe.loadGuild);
// 
app.post('/universe/addguildRessource', app.controllers.universe.addGuildRessource);
// 
app.post('/universe/takeguildRessource', app.controllers.universe.takeGuildRessource);
// 
app.post('/universe/addscore', app.controllers.universe.addScore);
// 
app.post('/universe/joinguild', app.controllers.universe.joinGuild);
// 
app.post('/universe/invitmember', app.controllers.universe.invitMember);
// 
app.post('/universe/kickmember', app.controllers.universe.kickMember);
// 
app.post('/universe/upgrademember', app.controllers.universe.upGradeMember);

}