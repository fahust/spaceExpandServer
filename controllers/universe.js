

module.exports = app => {
    return {loadById,loadAll,deleteShip,addShip,launchAttack,addDefense,deleteDefense,addTechnologie};

    function loadById(req, res){;
        var body = JSON.parse(Object.keys(req.body))
        res.json(app.universe.loadById(body.id));
    }

    function loadAll(req, res){
        var body = JSON.parse(Object.keys(req.body))
        res.json(app.universe.loadAll());
        app.universe.addUtoAll();
    }

    function deleteShip(req, res){
        var body = JSON.parse(Object.keys(req.body))
        app.universe.planets[req.body.id].deleteShip(req.body.cat,req.body.owner);
        res.json(app.universe.loadById(req.body.id));
    }

    function addShip(req, res){
        app.universe.planets[req.body.id].addShip(req.body.cat);
        res.json(app.universe.loadById(req.body.id));
    }

    function addDefense(req, res){
        app.universe.planets[req.body.id].addDefense();
        res.json(app.universe.loadById(req.body.id));
    }

    function deleteDefense(req, res){
        app.universe.planets[req.body.id].deleteDefense();
        res.json(app.universe.loadById(req.body.id));
    }

    function addTechnologie(req, res){
        app.universe.planets[req.body.id].addTechnologie();
        res.json(app.universe.loadById(req.body.id));
    }

    function launchAttack(req, res){
        app.universe.planets[req.body.id].prepareAttackClient(req);

        res.json(app.universe.loadById(req.body.id));


    }

    function colonize(req, res){
        app.universe.planets[req.body.id].prepareAttackClient(req);
        res.send("ok");
    }


};