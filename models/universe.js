var Planet = require('./planet.js');
const fs = require('fs');


function randomIntFromInterval(min, max) { // min and max included 
    return Math.floor(Math.random() * (max - min + 1) + min);
  }


    
    class Universe{

        constructor() {
            this.planets = [];
            this.transferShip = [];
            this.transferMoney = [];
            this.guilds = [];
            this.message = [];
            this.generate();
        }

        addMessage(body){
            this.message.push(body.m);
        }

        loadLastTenMessage(){
            lastMessage = [];
            for (let index = this.message.length-10; index < this.message.length; index++) {
                lastMessage.push(this.message[index]);
            }
            return lastMessage;
        }

        addGuild(body){
            if(!this.guilds[body.n]){
                var guild = {};
                guild.n = body.n;//name
                guild.r = body.r;//ressource
                guild.s = body.s;//score
                guild.t = body.t;//techno
                guild.m = body.cu;//maitre de guild
                guild.o = [];//officier de guild //peuvent inviter
                guild.u = [];
                guild.u[body.cu] = 'master';
                this.guilds[body.n] = guild;
            }
        }


        ////GUILD
        addGuildRessource(body){
            this.guilds[body.n].r += body.r;
        }

        takeGuildRessource(body){
            //this.guilds[body.n].r += body.r;
        }

        addScore(body){
            this.guilds[body.n].s += body.s;
        }

        joinGuild(body){
            if(this.guilds[body.n] && body.cu){//cu = client user envoi le globalidfixe
                if (this.guilds[body.n].u[body.cu] == 'invited'){
                    this.guilds[body.n].u[body.cu] = 'recruit';
                }
            }
        }

        invitGuild(body){
            if(this.guilds[body.n]){//cu = client user envoi le globalidfixe
                if (this.guilds[body.n].u[body.cu] == 'officier' || this.guilds[body.n].u[body.cu] == 'master' ){
                    this.guilds[body.n].u[body.cui] = 'invited';//client user invited
                }
            } 
        }

        kickGuild(body){
            if(this.guilds[body.n]){//cu = client user envoi le globalidfixe
                if (this.guilds[body.n].u[body.cu] == 'officier' || this.guilds[body.n].u[body.cu] == 'master'){
                    delete this.guilds[body.n].u[body.cui];//client user invited
                }
            } 
        }

        upGradeGuild(body){
            if(this.guilds[body.n]){//cu = client user envoi le globalidfixe
                if (this.guilds[body.n].u[body.cu] == 'officier' || this.guilds[body.n].u[body.cu] == 'master'){
                    this.guilds[body.n].u[body.cui] = 'officier';//client user invited
                }
            } 
        }

        //TRANSFER
        transferShipToOther(body){
            var transfer = {};
            transfer.sc1 = body.sc1;
            transfer.sc2 = body.sc2;
            transfer.sc3 = body.sc3;
            transfer.sc4 = body.sc4;
            transfer.sc5 = body.sc5;
            transfer.sc6 = body.sc6;
            transfer.sc7 = body.sc7;
            transfer.to = body.to;
            transfer.time = Date.now()+randomIntFromInterval(3000,5000);
            this.transferShip.push(transfer);
        }

        transferMoneyToOther(body){
            var transfer = {};
            transfer.money = body.t;
            transfer.to = body.to;
            transfer.time = Date.now()+randomIntFromInterval(3000,5000);
            this.transferMoney.push(transfer);
        }

        transferActualiz(){
            for (let index = 0; index < this.transferShip.length; index++) {
                if(this.transferShip[index].time < Date.now() ){
                    this.planets[this.transferShip[index].to].sc1 += this.transferShip[index].sc1;
                    this.planets[this.transferShip[index].to].sc2 += this.transferShip[index].sc2;
                    this.planets[this.transferShip[index].to].sc3 += this.transferShip[index].sc3;
                    this.planets[this.transferShip[index].to].sc4 += this.transferShip[index].sc4;
                    this.planets[this.transferShip[index].to].sc5 += this.transferShip[index].sc5;
                    this.planets[this.transferShip[index].to].sc6 += this.transferShip[index].sc6;
                    this.planets[this.transferShip[index].to].sc7 += this.transferShip[index].sc7;
                    delete this.transferShip[index];
                }
            }

            for (let index = 0; index < this.transferMoney.length; index++) {
                if(this.transferMoney[index].time < Date.now() ){
                    this.planets[this.transferMoney[index].to].t += this.transferMoney[index].money;
                    delete this.transferMoney[index];
                }
            }
        }


        ///LOAD
        loadById(id){
            this.actualizOne(id);
            this.transferActualiz();
            this.planets[id].trade();
            this.planets[id].shipBuild();
            this.planets[id].lv = Date.now();
            this.planets[id].u = [];
            var stringifiedPlanet = Object.assign(new Planet, this.planets[id]);
            this.planets[id].u = this;
            return stringifiedPlanet;
        }

        loadAll(){
            this.actualizAll();
            return this.planets;
        }

        ///SAVE
        Save(){

            try {
                this.actualizAll();
                let data = JSON.stringify(this.planets);
                fs.writeFile('save.json', data, (err) => {
                    if (err) throw err;
                    console.log('Data written to file');
                    this.addUtoAll();
                });
            } catch (err) {
                console.error(err);
            }
        }

        generate(){
            /*fs.readFile('save.json', (err, data) => {
                if (err) throw err;
                let planets = JSON.parse(data);
                for (let index = 0; index < planets.length; index++) {
                    this.planets.push(Object.assign(new Planet(this), planets[index]));
                }
                this.addUtoAll();
            });*/
            for (let index = 0; index <= 500; index++) {
                var fd = Date.now()+randomIntFromInterval(300000,1000000);
                this.planets.push(new Planet(this,index,randomIntFromInterval(2,4),fd,fd+randomIntFromInterval(10000,90000),randomIntFromInterval(0,3),randomIntFromInterval(15,25),randomIntFromInterval(3,5),randomIntFromInterval(3,5),0,0,0,randomIntFromInterval(1,5),0,0,0,0,0,0,0));
                //planet.generateAttackPnj();
            }
            //this.Save();
        }

        actualizOne(id){
            this.planets[id].modeBlockus();
            this.planets[id].checkFight();
        }

        actualizAll(){
            for (let index = 0; index < this.planets.length; index++) {
                this.planets[index].modeBlockus();
                this.planets[index].checkFight();
                this.planets[index].u = [];
            }
        }

        addUtoAll(){
            for (let index = 0; index < this.planets.length; index++) {
                this.planets[index].u = this;
            }
        }

    }

    module.exports = Universe;


