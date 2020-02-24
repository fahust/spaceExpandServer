

module.exports = app => {
    return {loadById,loadAll,deleteShip,addShip,launchAttack,addDefense,deleteDefense,addTechnologie,stopAttack};

    function loadById(req, res){//console.log('loadbyid')
        var body = JSON.parse(Object.keys(req.body));
        res.json(app.universe.loadById(body.id));
        //res.send('test')
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