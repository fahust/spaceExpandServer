module.exports = app => {
    app.controllers = {
        universe: require('./universe')(app),
    };
};