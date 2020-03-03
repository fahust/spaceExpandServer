"use strict";
var Planet = require('./planet.js');
const fs = require('fs');


function randomIntFromInterval(min, max) { // min and max included 
    return Math.floor(Math.random() * (max - min + 1) + min);
  }


    
    class Universe{

        constructor() {
            this.planets = [];
            this.usersScore = [];
            this.transferShip = [];
            this.commerce = [];
            this.guilds = [];
            this.message = [];
            this.aopsc1 = 0;
            this.aopsc2 = 0;
            this.aopsc3 = 0;
            this.aopsc4 = 0;
            this.aopsc5 = 0;
            this.aopsc6 = 0;
            this.aopsc7 = 0;
            this.generate();
        }

        /*SCORE*/
        setUsersScore(body){
            var userExist = false;
            for (let index = 0; index < this.usersScore.length; index++){
                if(this.usersScore[index]){
                    if (this.usersScore[index].cu == body.cu){
                        userExist = true;
                        this.usersScore[index].r = body.r;
                        this.usersScore[index].s = body.s;
                        this.usersScore[index].t = body.t;
                        this.usersScore[index].d = body.d;
                        this.usersScore[index].n = body.n;
                        break;
                    }
                }
            }
            if(userExist == false){
                this.usersScore[body.cu] = {};
                this.usersScore[body.cu].r = body.r;
                this.usersScore[body.cu].s = body.s;
                this.usersScore[body.cu].t = body.t;
                this.usersScore[body.cu].d = body.d;
                this.usersScore[body.cu].n = body.n;
                this.usersScore[body.cu].cu = body.cu;
                this.usersScore[body.cu].st = (Math.floor(body.r/100000)+body.s+body.t+(body.d*10));
            }
            //console.log(this.usersScore);
        }

        loadUsersScore(body){
            var closest = 500000;
            var userClose;
            this.usersScore.sort(function (a, b) {
                if(Math.abs((body.r+body.s+body.d+body.t) - (b.r+b.s+b.d+b.t) ) < closest){
                    closest = Math.abs((body.r+body.s+body.d+body.t) - (b.r+b.s+b.d+b.t));
                    userClose = b;
                }
                return (a.r+a.s+a.d+a.t) - (b.r+b.s+b.d+b.t);
            });
            this.usersScore.reverse();
            var indexClose = this.usersScore.indexOf(userClose);
            var breakIndex = 0;
            var str = "";
            for (let index = indexClose-10; index < this.usersScore.length; index++) {//console.log(index)
                if(this.usersScore[index]){
                        breakIndex += 1;
                        str = str+this.usersScore[index].n+"-"+"test"+"-"+this.usersScore[index].st+"-"+this.usersScore[index].r+"-"+this.usersScore[index].s+"-"+this.usersScore[index].t+"-"+this.usersScore[index].d+"-"+''+"-"+'test'+"-"+'test'+"-"+'test'+"-"+'test'+"-|";
                }
                if(breakIndex > 6)
                    break;
            }
            this.usersScore = this.usersScore.filter(function (el) { //suprimer empty element of array
                return el != null || undefined; 
            }); 
            //console.log(this.usersScore);
            return str;//usersScore;
        }

        /*MESSAGE*/
        addMessage(body){
            if(body.g == 0){//guild 0
                this.message.push(body.m);
            }else if(body.g != 0){
                this.guilds[body.g].m.push();
            }
            return this.loadLastTenMessage(body);
        }

        loadLastTenMessage(body){
            var str = "";
            if(body.g == 0){
                for (let index = this.message.length-10; index < this.message.length; index++) {
                    //console.log(this.message[index]);
                    if(this.message[index])
                        str = str+'line'+"-"+"id"+"-"+this.message[index]+"-"+"destid"+"-"+"dated"+"-"+"envoyeurid"+"-"+"destname"+"-"+'envoyeurname'+"-"+'type'+"-"+'test'+"-"+'test'+"-"+'test'+"-|";
                    //lastMessage.push(this.message[index]);
                }
            }else if(body.g != 0){
                for (let index = this.guilds[body.g].m.length-10; index < this.guilds[body.g].m.length; index++) {
                    if(this.guilds[body.g].m[index])
                        lastMessage.push(this.guilds[body.g].m[index]);
                }
            }
            return str;
        }

        /*GUILD*/
        addGuild(body){
            if(!this.guilds[body.n]){
                var guild = {};
                guild.n = body.n;//name
                guild.r = body.r;//ressource
                guild.s = body.s;//score
                guild.t = body.t;//techno
                guild.ma = body.cu;//maitre de guild
                guild.o = [];//officier de guild //peuvent inviter
                guild.u = [];
                guild.u[body.cu] = 'master';
                guild.m = [];
                this.guilds[body.n] = guild;
                return this.loadGuild(body);
            }
        }

        loadGuild(body){
            if(this.guilds[body.n]){
                return this.guilds[body.n];
            }
        }

        addGuildRessource(body){
            if(this.guilds[body.n]){
                this.guilds[body.n].r += body.r;
                return this.loadGuild(body);
            }
        }

        takeGuildRessource(body){
            if(this.guilds[body.n]){//cu = client user envoi le globalidfixe
                if (this.guilds[body.n].u[body.cu] == 'officier' || this.guilds[body.n].u[body.cu] == 'master' ){
                    this.guilds[body.n].r += body.r;
                }
                return this.loadGuild(body);
            }
        }

        addScore(body){
            if(this.guilds[body.n]){
                this.guilds[body.n].s += body.s;
                return this.loadGuild(body);
            }
        }

        joinGuild(body){
            if(this.guilds[body.n] && body.cu){//cu = client user envoi le globalidfixe
                if (this.guilds[body.n].u[body.cu] == 'invited'){
                    this.guilds[body.n].u[body.cu] = 'recruit';
                }
                return this.loadGuild(body);
            }
        }

        invitMember(body){
            if(this.guilds[body.n]){//cu = client user envoi le globalidfixe
                if (this.guilds[body.n].u[body.cu] == 'officier' || this.guilds[body.n].u[body.cu] == 'master' ){
                    this.guilds[body.n].u[body.cui] = 'invited';//client user invited
                }
                return this.loadGuild(body);
            } 
        }

        kickMember(body){
            if(this.guilds[body.n]){//cu = client user envoi le globalidfixe
                if (this.guilds[body.n].u[body.cu] == 'officier' || this.guilds[body.n].u[body.cu] == 'master'){
                    delete this.guilds[body.n].u[body.cui];//client user invited
                    this.guilds[body.n].u = this.guilds[body.n].u.filter(function (el) { //suprimer empty element of array
                        return el != null || undefined; 
                    }); 
                }
                return this.loadGuild(body);
            } 
        }

        upGradeMember(body){
            if(this.guilds[body.n]){//cu = client user envoi le globalidfixe
                if (this.guilds[body.n].u[body.cu] == 'officier' || this.guilds[body.n].u[body.cu] == 'master'){
                    this.guilds[body.n].u[body.cui] = 'officier';//client user invited
                }
                return this.loadGuild(body);
            } 
        }

        /*TRANSFER SHIP AND RESSOURCE*/
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
            this.planets[body.id].r -= body.r;
            if(body.to != 0){
                var transfer = {};
                transfer.sc1 = body.sc1;
                transfer.sc2 = body.sc2;
                transfer.sc3 = body.sc3;
                transfer.sc4 = body.sc4;
                transfer.sc5 = body.sc5;
                transfer.sc6 = body.sc6;
                transfer.sc7 = body.sc7;
                transfer.r = body.r;
                transfer.to = body.to;
                transfer.cu = body.cu;
                transfer.time = Date.now()+(body.d*100);//distance
                this.transferShip[JSON.stringify(body.cu)].push(transfer);
                //console.log('transfer ship',this.transferShip[JSON.stringify(body.cu)]);
                return transfer;
            }
        }

        checkTransferShip(idUser){
            if(this.transferShip[idUser]){
                this.transferShip[idUser] = this.transferShip[idUser].filter(function (el) { //suprimer empty element of array
                    return el != null || undefined; 
                }); 
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
                                //console.log(this.planets[this.transferShip[idUser][index].to].r);
                                this.planets[this.transferShip[idUser][index].to].r += this.transferShip[idUser][index].r;
                                //console.log(this.planets[this.transferShip[idUser][index].to].r); 
                                this.aopsc1 = this.transferShip[idUser][index].sc1;
                                this.aopsc2 = this.transferShip[idUser][index].sc2;
                                this.aopsc3 = this.transferShip[idUser][index].sc3;
                                this.aopsc4 = this.transferShip[idUser][index].sc4;
                                this.aopsc5 = this.transferShip[idUser][index].sc5;
                                this.aopsc6 = this.transferShip[idUser][index].sc6;
                                this.aopsc7 = this.transferShip[idUser][index].sc7;
                                delete this.transferShip[idUser][index];
                                //console.log('transfered');
                            }else{
                                //res.json(this.transferShip[idUser][index]);
                                delete this.transferShip[idUser][index];
                            }
                        }
                    }
                }
            }
        }


        ///LOAD
        loadById(body){
            if(body.id){
                if(body.n){
                    if(body.cu == this.planets[body.id].o)
                    this.planets[body.id].on = body.n
                }
                this.actualizOne(body.id);
                this.planets[body.id].trade();
                this.planets[body.id].rattrapageShipTechDef();
                if(body.cu)
                    this.checkTransferShip(body.cu);
                this.planets[body.id].dba = Date.now()-this.planets[body.id].tba
                this.planets[body.id].u = [];
                var stringifiedPlanet = Object.assign(new Planet(), this.planets[body.id]);
                if (this.aopsc1+this.aopsc2+this.aopsc3+this.aopsc4+this.aopsc5+this.aopsc6+this.aopsc7 > 0 ){
                    stringifiedPlanet.aopsc1 = this.aopsc1;
                    stringifiedPlanet.aopsc2 = this.aopsc2;
                    stringifiedPlanet.aopsc3 = this.aopsc3;
                    stringifiedPlanet.aopsc4 = this.aopsc4;
                    stringifiedPlanet.aopsc5 = this.aopsc5;
                    stringifiedPlanet.aopsc6 = this.aopsc6;
                    stringifiedPlanet.aopsc7 = this.aopsc7;
                    this.aopsc1 = 0;
                    this.aopsc2 = 0;
                    this.aopsc3 = 0;
                    this.aopsc4 = 0;
                    this.aopsc5 = 0;
                    this.aopsc6 = 0;
                    this.aopsc7 = 0;
                }
                this.planets[body.id].u = this;
                //console.log(stringifiedPlanet)
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
            fs.readFile('save.json', (err, data) => {
                if (err) throw err;
                let planets = JSON.parse(data);
                for (let index = 0; index < planets.length; index++) {
                    this.planets.push(Object.assign(new Planet(this), planets[index]));
                }
                this.addUtoAll();
            });
            /*for (let index = 0; index <= 500; index++) {
                var fd = Date.now()+randomIntFromInterval(300000,1000000);
                var planet = new Planet(this,index,randomIntFromInterval(2,4),fd,fd+randomIntFromInterval(10000,90000),randomIntFromInterval(0,3),randomIntFromInterval(15,25),randomIntFromInterval(3,5),randomIntFromInterval(3,5),0,0,0,randomIntFromInterval(1,5),0,0,0,0,0,0,0);
                planet.generateAttackPnj();
                this.planets.push(planet);
            }
            this.Save();*/
            setInterval(() => {
                this.Save();
            }, 26400000);
        }

        actualizOne(id){
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


