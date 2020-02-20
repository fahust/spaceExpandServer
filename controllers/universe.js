

module.exports = app => {
    return {loadById,loadAll,deleteShip,addShip,launchAttack};

    function loadById(req, res){//console.log(req)
        res.json(app.universe.loadById(req.body.id));
    }

    function loadAll(req, res){
        res.json(app.universe.loadAll());
        app.universe.addUtoAll();
    }

    function deleteShip(req, res){
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