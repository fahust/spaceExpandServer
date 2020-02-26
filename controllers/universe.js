

module.exports = app => {
    return {loadById,loadAll,deleteShip,addShip,launchAttack,addDefense,deleteDefense,addTechnologie,stopAttack,transferShip};

    function loadById(req, res){
        var body = JSON.parse(Object.keys(req.body));
        app.universe.planets[body.id].sr = body.sr;
        app.universe.planets[body.id].ss = body.ss;
        app.universe.planets[body.id].st = body.st;
        app.universe.planets[body.id].sd = body.sd;
        res.json(app.universe.loadById(body,res));
    }

    function loadAll(req, res){
        //var body = JSON.parse(Object.keys(req.body))
        res.json(app.universe.loadAll());
        app.universe.addUtoAll();
    }

    function deleteShip(req, res){
        var body = JSON.parse(Object.keys(req.body));
        app.universe.planets[body.id].deleteShip(body.cat,body.owner);
        res.json(app.universe.loadById(body.id));
    }

    function addShip(req, res){
        var body = JSON.parse(Object.keys(req.body));
        app.universe.planets[body.id].addShip(body.cat);console.log(body.cat)
        res.json(app.universe.loadById(body.id));
    }

    function addDefense(req, res){
        var body = JSON.parse(Object.keys(req.body));
        app.universe.planets[body.id].addDefense();
        res.json(app.universe.loadById(body.id));
    }

    function deleteDefense(req, res){
        var body = JSON.parse(Object.keys(req.body));
        app.universe.planets[body.id].deleteDefense();
        res.json(app.universe.loadById(body.id));
    }

    function addTechnologie(req, res){
        var body = JSON.parse(Object.keys(req.body));
        app.universe.planets[body.id].addTechnologie();
        res.json(app.universe.loadById(body.id));
    }

    function launchAttack(req, res){
        var body = JSON.parse(Object.keys(req.body));
        app.universe.planets[body.id].prepareAttackClient(body);
        res.json(app.universe.loadById(body.id));
    }

    function transferShip(req, res){
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.transferShipToOther(body));
    }

    function stopAttack(){
        var body = JSON.parse(Object.keys(req.body));
        app.universe.planets[body.id].prepareAttackClient(body);
        res.json(app.universe.loadById(body.id));
    }

    /*function colonize(req, res){
        app.universe.planets[body.id].prepareAttackClient(req);
        res.send("ok");
    }*/


};