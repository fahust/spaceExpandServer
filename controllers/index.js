module.exports = app => {
    app.controllers = {
        universe: require('./universe')(app),
        //question: require('./question')(app),
        //media: require('./media')(app)
    };
};