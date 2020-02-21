

module.exports = app => {
    return {loadById,loadAll,deleteShip,addShip,launchAttack,addDefense,deleteDefense,addTechnologie};

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
        //res.json(app.universe.loadById(req.body.id));
    }


};