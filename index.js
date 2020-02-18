const express = require('express'); 
const app = express();
const port = 3000;
//const fs = require('fs');
require('jsonminify');



var bodyParser = require('body-parser'); 
app.use(bodyParser.json()); 
app.use(bodyParser.urlencoded({ extended: true }));

//app.models.Universe
// Import du dossier routes et models
require('./controllers')(app);
require('./models')(app);
require('./routes')(app);

app.universe = new app.models.Universe();
//console.log(app.universe);
app.listen(port, () => console.log(`Application is running`));
