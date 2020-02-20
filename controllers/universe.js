

module.exports = app => {
    return {loadById,loadAll,deleteShip,addShip,launchAttack};

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
        app.universe.planets[req.body.id].addShip(req.body.cat,req.body.owner);
        res.json(app.universe.loadById(req.body.id));
    }

    function launchAttack(req, res){
        app.universe.planets[req.body.id].prepareAttackClient(req);
        res.send("ok");
    }

    function colonize(req, res){
        app.universe.planets[req.body.id].prepareAttackClient(req);
        res.send("ok");
    }
};