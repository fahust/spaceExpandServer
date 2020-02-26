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
            this.commerce = [];
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

        ////GUILD
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
            if(!this.transferShip[JSON.stringify(body.cu)])
                this.transferShip[JSON.stringify(body.cu)] = [];
            this.planets[body.id].sc1 -= body.sc1;
            this.planets[body.id].sc2 -= body.sc2;
            this.planets[body.id].sc3 -= body.sc3;
            this.planets[body.id].sc4 -= body.sc4;
            this.planets[body.id].sc5 -= body.sc5;
            this.planets[body.id].sc6 -= body.sc6;
            this.planets[body.id].sc7 -= body.sc7;
            if(body.to != 0){
                var transfer = {};
                transfer.sc1 = body.sc1;
                transfer.sc2 = body.sc2;
                transfer.sc3 = body.sc3;
                transfer.sc4 = body.sc4;
                transfer.sc5 = body.sc5;
                transfer.sc6 = body.sc6;
                transfer.sc7 = body.sc7;
                transfer.to = body.to;
                transfer.cu = body.cu;
                transfer.time = Date.now()+(body.d*100);//distance
                this.transferShip[JSON.stringify(body.cu)].push(transfer);
            
                console.log('transfer ship',this.transferShip[JSON.stringify(body.cu)]);
                return transfer;
            }
        }

        checkTransferShip(idUser){
            if(this.transferShip[idUser]){
                for (let index = 0; index < this.transferShip[idUser].length; index++) {
                    if(this.transferShip[idUser][index]){
                        if(Date.now() > this.transferShip[idUser][index].time){
                            if(this.transferShip[idUser][index].to != 0){
                                this.planets[this.transferShip[idUser][index].to].sc1 += this.transferShip[idUser][index].sc1;
                                this.planets[this.transferShip[idUser][index].to].sc2 += this.transferShip[idUser][index].sc2;
                                this.planets[this.transferShip[idUser][index].to].sc3 += this.transferShip[idUser][index].sc3;
                                this.planets[this.transferShip[idUser][index].to].sc4 += this.transferShip[idUser][index].sc4;
                                this.planets[this.transferShip[idUser][index].to].sc5 += this.transferShip[idUser][index].sc5;
                                this.planets[this.transferShip[idUser][index].to].sc6 += this.transferShip[idUser][index].sc6;
                                this.planets[this.transferShip[idUser][index].to].sc7 += this.transferShip[idUser][index].sc7;
                                console.log('transfered');
                            }else{
                                //res.json(this.transferShip[idUser][index]);
                                delete this.transferShip[idUser][index];
                            }
                        }
                    }
                }
            }
        }

        transferMoneyToOther(body){
            var transfer = {};
            transfer.money = body.t;
            transfer.to = body.to;
            transfer.time = Date.now()+(body.d*100);//distance
            this.transferMoney.push(transfer);
        }

        /*transferActualiz(){
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
        }*/


        ///LOAD
        loadById(body){
            if(body.id){
                this.actualizOne(body.id);
                //this.transferActualiz();
                this.planets[body.id].trade();
                this.planets[body.id].rattrapageShipTechDef();
                this.checkTransferShip(body.cu);
                this.planets[body.id].dba = Date.now()-this.planets[body.id].tba
                this.planets[body.id].lv = Date.now();
                this.planets[body.id].u = [];
                var stringifiedPlanet = Object.assign(new Planet, this.planets[body.id]);
                this.planets[body.id].u = this;
                return stringifiedPlanet;
            }
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
                var planet = new Planet(this,index,randomIntFromInterval(2,4),fd,fd+randomIntFromInterval(10000,90000),randomIntFromInterval(0,3),randomIntFromInterval(15,25),randomIntFromInterval(3,5),randomIntFromInterval(3,5),0,0,0,randomIntFromInterval(1,5),0,0,0,0,0,0,0);
                planet.generateAttackPnj();
                this.planets.push(planet);
            }
            //this.Save();
        }

        actualizOne(id){
            //this.planets[id].modeBlockus();
            this.planets[id].checkFight();
        }

        actualizAll(){
            for (let index = 0; index < this.planets.length; index++) {
                //this.planets[index].modeBlockus();
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


