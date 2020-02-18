module.exports = app => {
    return {createUser,connectUser, checkDeleteUser,deleteUser};

    function createUser(req, res){
        app.models.User.find({'username': req.body.username , 'password': req.body.password}, function (err, user) {
            if (err) 
                res.send(err); 
            if(!user){
                new app.models.User(req.body);
                user.save();
                res.send('User created');
            }else{
                res.send('User '+req.body.name+' already exist');
            }
        });
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