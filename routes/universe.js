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
app.post('/universe/addRessourceByShipEvent', app.controllers.universe.addRessourceByShipEvent);
// 
app.post('/universe/loadUsersScore', app.controllers.universe.loadUsersScore);
// 
app.post('/universe/setUsersScore', app.controllers.universe.setUsersScore);
// 
app.post('/universe/addMessage', app.controllers.universe.addMessage);
// 
app.post('/universe/loadLastTenMessage', app.controllers.universe.loadLastTenMessage);
// 
app.post('/universe/addGuild', app.controllers.universe.addGuild);
// 
app.post('/universe/loadGuild', app.controllers.universe.loadGuild);
// 
app.post('/universe/addGuildRessource', app.controllers.universe.addGuildRessource);
// 
app.post('/universe/takeGuildRessource', app.controllers.universe.takeGuildRessource);
// 
app.post('/universe/addScore', app.controllers.universe.addScore);
// 
app.post('/universe/joinGuild', app.controllers.universe.joinGuild);
// 
app.post('/universe/invitMember', app.controllers.universe.invitMember);
// 
app.post('/universe/kickMember', app.controllers.universe.kickMember);
// 
app.post('/universe/upGradeMember', app.controllers.universe.upGradeMember);

}