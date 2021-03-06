

"use strict";

module.exports = app => {
    return { loadById, loadAll, deleteShip, addShip, launchAttack, addDefense, deleteDefense, addTechnologie, stopAttack, transferShip, addRessourceByShipEvent, loadUsersScore, setUsersScore, addMessage, loadLastTenMessage, addGuild, quitGuild, changeNameUserGuild, loadGuild, addGuildRessource, takeGuildRessource, addScore, joinGuild, invitMember, kickMember, upGradeMember, downGradeMember, addShipMultipleShip, loadUsersGuild, addEventParticipant, sendShipEvent, deleteShipEventParticipant, addPrimeOnPlanet, questAddParticipation, listBioByPage, getBio, getQuest, sendPostMine, addBuildOrbit, getBuildOrbit, deleteBuildOrbit, dmgEM, changeTbm, changeTm, changeVs, changeVt, changeVd, changePs, changePt, changePd, getPolitics, addElu, voteElu, unvoteElu, votePre, unvotePre, listBioPre, pickMoney, sendMineTaxe, sendCargoDestroy, sellSuccessTrade, buySuccessTrade, listSuccessTrade, sellShipTrade, buyShipTrade, listShipTrade };

    function loadById(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        if (body.sr) app.universe.planets[body.id].sr = body.sr;
        if (body.ss) app.universe.planets[body.id].ss = body.ss;
        if (body.st) app.universe.planets[body.id].st = body.st;
        if (body.sd) app.universe.planets[body.id].sd = body.sd;
        res.json(app.universe.loadById(body, res));
    }

    function loadAll(req, res) {
        res.json(app.universe.loadAll());
        app.universe.addUtoAll();
    }

    /*BUILD AND DESTROY SHIP / DEF / TECH / */
    function deleteShip(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        var response = app.universe.planets[body.id].deleteShip(body.cat, body.owner, body.id, app.universe);
        if (response.giftuser != undefined)
            app.universe.gift[response.giftuser.by] = response.giftuser.p;
        res.json({});
    }

    function addShip(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        app.universe.planets[body.id].addShip(body.cat);
        res.json(app.universe.loadById(body));
    }

    function addShipMultipleShip(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        app.universe.planets[body.id].addShipMultipleShip(body);
        res.json(app.universe.loadById(body));
    }

    function addDefense(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        app.universe.planets[body.id].addDefense();
        res.json(app.universe.loadById(body));
    }

    function deleteDefense(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        app.universe.planets[body.id].deleteDefense();
        res.json(app.universe.loadById(body));
    }

    function addTechnologie(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        app.universe.planets[body.id].addTechnologie();
        res.json(app.universe.loadById(body));
    }

    function addRessourceByShipEvent(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        app.universe.planets[body.id].r += body.r;
        var response = {};
        res.json(response);
    }

    /*MOVEMENT SHIP AND ATTACK*/
    function transferShip(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.transferShipToOther(body));
    }

    function launchAttack(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        app.universe.planets[body.id].prepareAttackClient(body, app.universe);
        res.json(app.universe.loadById(body));
    }

    function stopAttack() {
        /*var body = JSON.parse(Object.keys(req.body));
        app.universe.planets[body.id].prepareAttackClient(body);
        res.json(app.universe.loadById(body));*/
    }

    /*SCORE*/
    function loadUsersScore(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        var score = app.universe.loadUsersScore(body)
        var planetLoad = app.universe.loadById(body);
        planetLoad.score1 = score[1]
        planetLoad.score2 = score[2]
        planetLoad.score3 = score[3]
        planetLoad.score4 = score[4]
        planetLoad.score5 = score[5]
        planetLoad.score6 = score[6]
        planetLoad.score7 = score[7]
        planetLoad.score8 = score[8]
        planetLoad.score9 = score[9]
        planetLoad.score10 = score[10]
        planetLoad.score11 = score[11]
        planetLoad.score12 = score[12]
        planetLoad.score13 = score[13]
        planetLoad.score14 = score[14]
        planetLoad.score15 = score[15]
        planetLoad.score16 = score[16]
        planetLoad.score17 = score[17]
        res.json(planetLoad);
    }

    function setUsersScore(req, res) {
        //var time = Date.now();
        var body = JSON.parse(Object.keys(req.body));
        if (body.sr) app.universe.planets[body.id].sr = body.sr;
        if (body.ss) app.universe.planets[body.id].ss = body.ss;
        if (body.st) app.universe.planets[body.id].st = body.st;
        if (body.sd) app.universe.planets[body.id].sd = body.sd;
        if (body.s) app.universe.setUsersScore(body);
        var planetLoad = app.universe.loadById(body);
        var lts = ""; //list travel ship
        var lfs = ""; //list fight ship
        app.universe.planets.filter(function (el) {
            if (el.aby == body.cu){
                var dist = Math.floor(((el.tba-Date.now())/1000));
                if (Date.now() > el.tba)
                    dist = 0;
                lfs = lfs + JSON.stringify(el.id) + "-" + JSON.stringify(dist) + "-" + JSON.stringify(el.asc2+el.asc3+el.asc4+el.asc5+el.asc6+el.asc7) + "|"
            }
            if (el.o == body.cu && el.ua > 0)//si planet owned attacked now
                lfs = lfs + JSON.stringify(el.id) + "-" + JSON.stringify(0) + "-" + JSON.stringify(el.asc2+el.asc3+el.asc4+el.asc5+el.asc6+el.asc7) + "|"
            if (el.o == body.cu) {
                app.universe.planets[el.id].g = body.g;
                app.universe.planets[el.id].rc = body.rc;
                app.universe.planets[el.id].rx = body.rx;
                app.universe.planets[el.id].rd = body.rd;
                el.n = body.n;
                planetLoad[el.id] = body.n;
                planetLoad[el.id] = el.r;
                body.t += app.universe.planets[el.id].t;
            }
        });
        if (app.universe.transferShip[JSON.stringify(body.cu)]) {
            app.universe.transferShip[body.cu].forEach(element => {
                var dist = Math.floor(((Date.now()-element.time)/1000));
                if (Date.now() > element.time)
                    dist = 0;
                lts = lts + JSON.stringify(element.to) + "-" + JSON.stringify(Math.floor((Date.now()-element.time)/1000)) + "-" +  JSON.stringify(element.sc2+element.sc3+element.sc4+element.sc5+element.sc6+element.sc7) + "|"
            });
        }
        planetLoad.lts = lts;//list travel ship
        planetLoad.lfs = lfs;//list fight ship
        planetLoad.tsl = body.t;//tech score load
        //console.log('loadID',Date.now()-time);
        res.json(planetLoad);
    }

    /*MESSAGE*/
    function addMessage(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        var obj = {};
        obj.chat = app.universe.addMessage(body);
        res.json(obj);
    }

    function loadLastTenMessage(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        var obj = {};
        obj.chat = app.universe.loadLastTenMessage(body)
        res.json(obj);
    }

    /*GUILD*/
    function addGuild(req, res) {//enregistrer coter client sa guild pour l'envoyer ensuite au serveur sur les planete dont il est proprietaire pour ensuite send ship a d'autre membre de guild (this.g)
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.addGuild(body));
        delete app.universe.guilds[body.n].cg
    }

    function changeNameUserGuild(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.changeNameUserGuild(body));
    }

    function quitGuild(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.quitGuild(body));
    }

    function loadGuild(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.loadGuild(body));
    }

    function addGuildRessource(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.addGuildRessource(body));
    }

    function takeGuildRessource(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.takeGuildRessource(body));
    }

    function addScore(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.addScore(body));
    }

    function joinGuild(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.joinGuild(body));
    }

    function invitMember(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.invitMember(body));
    }

    function kickMember(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.kickMember(body));
    }

    function upGradeMember(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.upGradeMember(body));
    }

    function downGradeMember(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.downGradeMember(body));
    }

    function loadUsersGuild(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        var obj = {};
        obj.chat = app.universe.loadUsersGuild(body);//console.log(obj);
        res.json(obj);
    }




    //EVENT

    function addEventParticipant(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.addEventParticipant(body));
    }

    function sendShipEvent(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.sendShipEvent(body));
    }

    function deleteShipEventParticipant(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.deleteShipEventParticipant(body));
    }

    //OTHER
    function addPrimeOnPlanet(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.addPrimeOnPlanet(body));
    }

    function questAddParticipation(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.questAddParticipation(body));
    }

    function listBioByPage(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.listBioByPage(body));
    }

    function getBio(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.getBio(body));
    }

    function getQuest(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.getQuest(body));
    }

    function questAddParticipation(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.questAddParticipation(body));
    }

    function sendPostMine(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.sendPostMine(body));
    }

    function addBuildOrbit(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.planets[body.id].addBuildOrbit(body));
    }

    function getBuildOrbit(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.planets[body.id].getBuildOrbit());
    }

    function deleteBuildOrbit(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.planets[body.id].deleteBuildOrbit(body));
    }

    function dmgEM(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.dmgEM(body));
    }

    function changeTbm(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.changeTbm(body));
    }

    function changeTm(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.changeTm(body));
    }

    function changeVs(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.changeVs(body));
    }

    function changeVt(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.changeVt(body));
    }

    function changeVd(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.changeVd(body));
    }

    function changePs(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.changePs(body));
    }

    function changePt(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.changePt(body));
    }

    function changePd(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.changePd(body));
    }

    function getPolitics(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.getPolitics(body));
    }

    function addElu(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.addElu(body));
    }

    function voteElu(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.voteElu(body));
    }

    function unvoteElu(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.unvoteElu(body));
    }

    function votePre(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.votePre(body));
    }

    function unvotePre(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.unvotePre(body));
    }

    function listBioPre(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.listBioPre(body));
    }

    function pickMoney(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.pickMoney(body));
    }

    function sendMineTaxe(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.sendMineTaxe(body));
    }

    function sendCargoDestroy(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.sendCargoDestroy(body));
    }

    function sellSuccessTrade(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.sellSuccessTrade(body));
    }

    function buySuccessTrade(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.buySuccessTrade(body));
    }

    function listSuccessTrade(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.listSuccessTrade(body));
    }

    function sellShipTrade(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.sellShipTrade(body));
    }

    function buyShipTrade(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.buyShipTrade(body));
    }

    function listShipTrade(req, res) {
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.listShipTrade(body));
    }
    
    


};