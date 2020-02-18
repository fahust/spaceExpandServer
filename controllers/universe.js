module.exports = app => {
    return {loadById};

    function loadById(req, res){
        res.send(app.models.Universe.loadById(id));
    }

    function connectUser(req, res){
        app.models.User.findOne({ username: req.body.username }, function(err, user) {
            if (err) throw err;
        
            // test a matching password
            user.comparePassword(req.body.password, function(err, isMatch) {
                if (err) throw err;
                console.log(req.body.password, isMatch);
                if(isMatch == true)
                    res.send('You is connected');
            });
        });
    }

    function checkDeleteUser(req, res){
        app.models.User.findOne({ username: req.body.username }, function(err, user) {
            if (err) throw err;
        
            // test a matching password
            user.comparePassword(req.body.password, function(err, isMatch) {
                if (err) throw err;
                console.log(req.body.password, isMatch);
                if(isMatch == true)
                    deleteUser(req, res, user._id);
            });
        });
    }

    function deleteUser(req, res, id){
        app.models.User.findOneAndDelete({ _id: id }, function(err, user) {
            if (err) throw err;
            res.json('L\'utilisateur a bien été supprimé');
        });
    }
};