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
    app.post('/universe/quitguild', app.controllers.universe.quitGuild);
    // 
    app.post('/universe/changenameuserguild', app.controllers.universe.changeNameUserGuild);
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
    // 
    app.post('/universe/downgrademember', app.controllers.universe.downGradeMember);
    // 
    app.post('/universe/loadusersguild', app.controllers.universe.loadUsersGuild);


    // 
    app.post('/universe/addeventparticipant', app.controllers.universe.addEventParticipant);
    // 
    app.post('/universe/sendshipevent', app.controllers.universe.sendShipEvent);
    // 
    app.post('/universe/deleteshipeventparticipant', app.controllers.universe.deleteShipEventParticipant);


    // 
    app.post('/universe/addprimeonplanet', app.controllers.universe.addPrimeOnPlanet);

    app.post('/universe/questaddparticipation', app.controllers.universe.questAddParticipation);

    app.post('/universe/listbiobypage', app.controllers.universe.listBioByPage);

    app.post('/universe/getbio', app.controllers.universe.getBio);

    //
    app.post('/universe/getquest', app.controllers.universe.getQuest);

    app.post('/universe/questaddparticipation', app.controllers.universe.questAddParticipation);

    app.post('/universe/sendpostmine', app.controllers.universe.sendPostMine);

    //
    app.post('/universe/addbuildorbit', app.controllers.universe.addBuildOrbit);

    app.post('/universe/getbuildorbit', app.controllers.universe.getBuildOrbit);

    app.post('/universe/deletebuildorbit', app.controllers.universe.deleteBuildOrbit);


    app.post('/universe/dmgem', app.controllers.universe.dmgEM);

    
    app.post('/universe/changetbm', app.controllers.universe.changeTbm);
    
    app.post('/universe/changetm', app.controllers.universe.changeTm);
    
    app.post('/universe/changevs', app.controllers.universe.changeVs);
    
    app.post('/universe/changevt', app.controllers.universe.changeVt);
    
    app.post('/universe/changevd', app.controllers.universe.changeVd);
    
    app.post('/universe/changeps', app.controllers.universe.changePs);
    
    app.post('/universe/changept', app.controllers.universe.changePt);
    
    app.post('/universe/changepd', app.controllers.universe.changePd);
    
    app.post('/universe/getpolitics', app.controllers.universe.getPolitics);
    
    app.post('/universe/addelu', app.controllers.universe.addElu);
    
    app.post('/universe/voteelu', app.controllers.universe.voteElu);
    
    app.post('/universe/unvoteelu', app.controllers.universe.unvoteElu);
    
    app.post('/universe/votepre', app.controllers.universe.votePre);
    
    app.post('/universe/unvotepre', app.controllers.universe.unvotePre);
    
    app.post('/universe/listbiopre', app.controllers.universe.listBioPre);
    
    app.post('/universe/pickmoney', app.controllers.universe.pickMoney);
    
    app.post('/universe/sendminetaxe', app.controllers.universe.sendMineTaxe);
    
    app.post('/universe/sendcargodestroy', app.controllers.universe.sendCargoDestroy);
    
    app.post('/universe/sellsuccesstrade', app.controllers.universe.sellSuccessTrade);
    
    app.post('/universe/buysuccesstrade', app.controllers.universe.buySuccessTrade);
    
    app.post('/universe/listsuccesstrade', app.controllers.universe.listSuccessTrade);

    app.post('/universe/sellshiptrade', app.controllers.universe.sellShipTrade);
    
    app.post('/universe/buyshiptrade', app.controllers.universe.buyShipTrade);
    
    app.post('/universe/listshiptrade', app.controllers.universe.listShipTrade);

    

    




}