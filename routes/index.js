module.exports = app => {

    require('./universe')(app);

    // HOME
    app.get('/', (req, res) => res.send('Accueil de l\'application!'));

};
