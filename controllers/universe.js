

"use strict";

module.exports = app => {
    return {loadById,loadAll,deleteShip,addShip,launchAttack,addDefense,deleteDefense,addTechnologie,stopAttack,transferShip,addRessourceByShipEvent,loadUsersScore,setUsersScore,addMessage,loadLastTenMessage,addGuild,loadGuild,addGuildRessource,takeGuildRessource,addScore,joinGuild,invitMember,kickMember,upGradeMember,addShipMultipleShip};

    function loadById(req, res){
        var body = JSON.parse(Object.keys(req.body));
        app.universe.planets[body.id].sr = body.sr;
        app.universe.planets[body.id].ss = body.ss;
        app.universe.planets[body.id].st = body.st;
        app.universe.planets[body.id].sd = body.sd;
        if(body.g)
            app.universe.planets[body.id].g = body.g;
        res.json(app.universe.loadById(body,res));
    }

    function loadAll(req, res){
        //var body = JSON.parse(Object.keys(req.body))
        res.json(app.universe.loadAll());
        app.universe.addUtoAll();
    }

    /*BUILD AND DESTROY SHIP / DEF / TECH / */
    function deleteShip(req, res){
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.planets[body.id].deleteShip(body.cat,body.owner,body.id));
        //res.json(app.universe.loadById(body));
    }

    function addShip(req, res){
        var body = JSON.parse(Object.keys(req.body));
        app.universe.planets[body.id].addShip(body.cat);
        res.json(app.universe.loadById(body));
    }

    function addShipMultipleShip(req, res){
        var body = JSON.parse(Object.keys(req.body));
        app.universe.planets[body.id].addShipMultipleShip(body);
        res.json(app.universe.loadById(body));
    }

    function addDefense(req, res){
        var body = JSON.parse(Object.keys(req.body));
        app.universe.planets[body.id].addDefense();
        res.json(app.universe.loadById(body));
    }

    function deleteDefense(req, res){
        var body = JSON.parse(Object.keys(req.body));
        app.universe.planets[body.id].deleteDefense();
        res.json(app.universe.loadById(body));
    }

    function addTechnologie(req, res){
        var body = JSON.parse(Object.keys(req.body));
        app.universe.planets[body.id].addTechnologie();
        res.json(app.universe.loadById(body));
    }

    function addRessourceByShipEvent(req,res){
        var body = JSON.parse(Object.keys(req.body));
        app.universe.planets[body.id].r += body.r;
        var response = {};
        res.json(response);//app.universe.loadById(body)
    }

    /*MOVEMENT SHIP AND ATTACK*/
    function transferShip(req, res){
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.transferShipToOther(body));
    }

    function launchAttack(req, res){
        var body = JSON.parse(Object.keys(req.body));
        app.universe.planets[body.id].prepareAttackClient(body);
        res.json(app.universe.loadById(body));
    }

    function stopAttack(){
        var body = JSON.parse(Object.keys(req.body));
        app.universe.planets[body.id].prepareAttackClient(body);
        res.json(app.universe.loadById(body));
    }

    /*SCORE*/
    function loadUsersScore(req, res){
        var body = JSON.parse(Object.keys(req.body));
        var score = app.universe.loadUsersScore(body)
        var planetLoad = app.universe.loadById(body);
        planetLoad.score = score
        res.json(planetLoad);
    }

    function setUsersScore(req, res){
        var body = JSON.parse(Object.keys(req.body));
        app.universe.setUsersScore(body);
        var planetLoad = app.universe.loadById(body);
        app.universe.planets.filter(function (el) { 
            if(el.o == body.cu){
                planetLoad[el.id] = el.r;
                body.t += app.universe.planets[el.id].t;
            }
        }); 
        planetLoad.tsl = body.t;//tech score load
        res.json(planetLoad);
    }

    /*MESSAGE*/
    function addMessage(req, res){
        var body = JSON.parse(Object.keys(req.body));
        var obj = {};
        obj.chat = app.universe.addMessage(body);
        res.json(obj);
    }
    
    function loadLastTenMessage(req, res){
        var body = JSON.parse(Object.keys(req.body));
        var obj = {};
        obj.chat = app.universe.loadLastTenMessage(body)
        res.json(obj);
    }

    /*GUILD*/
    function addGuild(req, res){//enregistrer coter client sa guild pour l'envoyer ensuite au serveur sur les planete dont il est proprietaire pour ensuite send ship a d'autre membre de guild (this.g)
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.addGuild(body));
    }
    
    function loadGuild(req, res){
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.loadGuild(body));
    }
    
    function addGuildRessource(req, res){
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.addGuildRessource(body));
    }
    
    function takeGuildRessource(req, res){
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.takeGuildRessource(body));
    }
    
    function addScore(req, res){
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.addScore(body));
    }
    
    function joinGuild(req, res){
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.joinGuild(body));
    }
    
    function invitMember(req, res){
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.invitMember(body));
    }
    
    function kickMember(req, res){
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.kickMember(body));
    }
    
    function upGradeMember(req, res){
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.upGradeMember(body));
    }
    

    

    

    

    /*function colonize(req, res){
        app.universe.planets[body.id].prepareAttackClient(req);
        res.send("ok");
    }*/


};