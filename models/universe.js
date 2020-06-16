"use strict";
var Planet = require('./planet.js');
const fs = require('fs');


function randomIntFromInterval(min, max) { // min and max included 
    return Math.floor(Math.random() * (max - min + 1) + min);
}

function hours_with_leading_zeros(dt) 
{ 
  return (dt.getHours() < 10 ? '0' : '') + dt.getHours();
}
function minutes_with_leading_zeros(dt) 
{ 
  return (dt.getMinutes() < 10 ? '0' : '') + dt.getMinutes();
}
function secondes_with_leading_zeros(dt) 
{ 
  return (dt.getSeconds() < 10 ? '0' : '') + dt.getSeconds();
}

class Universe {

    constructor() {
        this.planets = [];
        this.usersScore = {};
        this.transferShip = [];
        this.commerce = [];
        this.guilds = {};
        this.gift = [];
        this.postMine = {};
        this.tradeSuccess = {};
        this.tradeShip = {};
        this.giftQuest = {};
        this.giftQuest.p = {};
        this.giftTrade = {};
        this.quest = {};
        this.quest.p = {};
        this.message = [];
        this.messageInfo = {};
        this.event = {};
        this.postMineEm= {};
        this.postMineEm.hp = 0;
        this.postMineEm.system = 1;
        this.aopsc1 = 0;
        this.aopsc2 = 0;
        this.aopsc3 = 0;
        this.aopsc4 = 0;
        this.aopsc5 = 0;
        this.aopsc6 = 0;
        this.aopsc7 = 0;
        this.loot = [];
        this.politique = {};
        this.bioPre = [];
        this.generate();
        this.createEvent();
        this.createEM();
        this.createPolitics();
    }

    /*SCORE*/
    setUsersScore(body) {
        //new Promise((resolve, reject) => {
            var userExist = false;
            if (!this.usersScore[body.cu]) 
                this.usersScore[body.cu] = {};
            this.usersScore[body.cu].r = body.r;
            this.usersScore[body.cu].s = body.s;
            this.usersScore[body.cu].t = body.t;
            this.usersScore[body.cu].d = body.d;
            this.usersScore[body.cu].n = body.n;
            this.usersScore[body.cu].cu = body.cu;
            this.usersScore[body.cu].dn = Date.now();
            this.usersScore[body.cu].st = body.r / 1000000 + body.s + (body.t * 50) + (body.d * 10);
        //    resolve('OK');
        //})//.then(OK => console.log('User Score Setted')).catch(err => console.log(err));
    }

    loadUsersScore(body) {
        var closest = 500000;
        var userClose;
        var usersScore = [];
        for (var key in this.usersScore) {
            if(Date.now() > this.usersScore[key].dn+(86400000*30) ){
                delete this.usersScore[key];
            }else{
                usersScore.push(this.usersScore[key]);
            }
        }
        usersScore.sort(function (a, b) {
            if (a.st - b.st < closest) {
                closest = a.st - b.st;
                userClose = b;
            }
            return a.st - b.st;
        });
        usersScore.reverse();
        var indexClose = usersScore.indexOf(userClose);
        var breakIndex = 0;
        var str = "";
        for (let index = indexClose - 10; index < usersScore.length; index++) {
            if (usersScore[index]) {
                breakIndex += 1;
                str = str + usersScore[index].n + "-" + "" + "-" + Math.floor(usersScore[index].st) + "-" + usersScore[index].r + "-" + usersScore[index].s + "-" + usersScore[index].t + "-" + usersScore[index].d + "-" + '' + "-" + '' + "-" + '' + "-" + '' + "-" + '' + "-|";
            }
            if (breakIndex >= 17)
                break;
        }
        usersScore = usersScore.filter(function (el) { //suprimer empty element of array
            return el != null || undefined;
        });
        return str;//usersScore;
    }

    loadUsersGuild(body) {
        var breakIndex = 0;
        var str = "---------------------|";
        if (this.guilds[body.gn]) {
            var str = "";
            for (var prop in this.guilds[body.gn].u) {
                if (prop) {
                    breakIndex += 1;
                    str = str + this.guilds[body.gn].u[prop].t.toUpperCase() + " : " + this.guilds[body.gn].u[prop].n + "-" + "" + "-" + this.guilds[body.gn].u[prop].stal + "-" + this.guilds[body.gn].u[prop].sr + "-" + this.guilds[body.gn].u[prop].ss + "-" + this.guilds[body.gn].u[prop].st + "-" + this.guilds[body.gn].u[prop].sd + "-" + prop + "-" + "-" + "-" + "-" + "-" + "|";
                }
                if (breakIndex > 30)
                    break;
            }
        }
        return str;
    }

    /*MESSAGE*/
    addMessage(body) {
        var message = {};
        //new Promise((resolve, reject) => {
            if (body.m != "") {
                var current_datetime = new Date()
                var formatted_date = current_datetime.getFullYear() + "/" + (current_datetime.getMonth() + 1) + "/" + current_datetime.getDate() + ";" + hours_with_leading_zeros(current_datetime) + ":" + minutes_with_leading_zeros(current_datetime) + ":" + secondes_with_leading_zeros(current_datetime);
                if (body.g == "") {//guild 0
                    message.m = body.m
                    message.g = body.g
                    message.d = formatted_date;
                    message.t = 1; //type 1 no guild no private
                    if (body.by)//id
                        message.by = body.by;
                    if (body.byn)//name
                        message.byn = body.byn;
                    if (body.to) {//id //name
                        message.to = body.to;
                        message.ton = 'test';//body.ton;
                        message.t = 2; //type 2 no guild but private
                    }
                    this.message.push(message);
                } else if (body.g != "") {
                    message.g = body.g
                    message.m = body.m
                    message.d = formatted_date;
                    message.t = 3; //type 1 no guild no private
                    if (body.by)//id
                        message.by = body.by;
                    if (body.byn)//name
                        message.byn = body.byn;
                    this.message.push(message);
                }
            }
        //    resolve('OK');
        //})//.then(OK => console.log('User Score Setted')).catch(err => console.log(err));
        return this.loadLastTenMessage(body);
    }

    loadLastTenMessage(body) {
        var str = "";
        var messages = [];
        for (let index = this.message.length - 200; index < this.message.length; index++) {
            if (this.message[index] && body.t == 1 && body.t == this.message[index].t && body.g == this.message[index].g) {
                messages.push(this.message[index])
            } else if (this.message[index] && body.t == 2 && body.t == this.message[index].t && (body.cu == this.message[index].to || body.cu == this.message[index].by)) {
                messages.push(this.message[index])
            } else if (this.message[index] && body.t == 3 && body.t == this.message[index].t && body.g == this.message[index].g) {
                messages.push(this.message[index])
            }
        }
        for (let index = messages.length - 17; index < messages.length; index++) {
            if (messages[index])
                str = str + messages[index].m + "-" + messages[index].d + "-" + messages[index].by + "-" + messages[index].byn + "|";
        }
        return str;
    }

    /*GUILD*/
    addGuild(body) {
        if (!this.guilds[body.n]) {
            var guild = {};
            guild.n = body.n;//name
            guild.r = 0;//ressource
            guild.s = body.s;//score
            guild.t = body.t;//techno
            guild.ma = body.cu;//maitre de guild
            guild.idg = randomIntFromInterval(10, 999999);
            guild.o = {};//officier de guild //peuvent inviter
            guild.u = {};//users
            guild.u[body.cu] = {};
            guild.u[body.cu].sr = body.cur;
            guild.u[body.cu].ss = body.cus;
            guild.u[body.cu].st = body.cut;
            guild.u[body.cu].sd = body.cud;
            guild.u[body.cu].stal = (Math.floor(body.cur / 100000) + body.cus + body.cut + (body.cud * 10));
            guild.u[body.cu].t = 'master';
            guild.u[body.cu].n = body.cun;
            guild.m = [];//message
            this.guilds[body.n] = guild;
            guild.cg = 1
            return guild;
        }
        return guild;
    }

    quitGuild(body) {
        //new Promise((resolve, reject) => {
            if (this.guilds[body.n] && body.cu && this.guilds[body.n].u[body.cu]) {
                delete this.guilds[body.n].u[body.cu]
                var count = 0;
                for (var k in this.guilds[body.n].u) {
                    if (this.guilds[body.n].u.hasOwnProperty(k)) {
                        ++count;
                    }
                }
                if (count == 0) {
                    delete this.guilds[body.n]
                }
            }
        //    resolve('OK');
        //})//.then(OK => console.log('guild quitted')).catch(err => console.log(err));
        var obj = {};
        obj.cg = 0;
        obj.n = undefined;
        obj.icu = undefined;
        return obj;
    }

    changeNameUserGuild(body) {
        if (this.guilds[body.n] && body.cu && body.cunn && this.guilds[body.n].u[body.cu]) {
            guild.u[body.cu].n = body.cun;
        }
        /*if(this.guilds[body.n] && body.cu && body.cunn && this.guilds[body.n].u[body.cu]){
            var oldUser = this.guilds[body.n].u[body.cu];
            this.guilds[body.n].u[body.cunn] = oldUser;
            delete this.guilds[body.n].u[body.cu];
        }*/
    }

    loadGuild(body) {
        if (this.guilds[body.n] && body.n != "") {
            return this.guilds[body.n];
        } else {
            var obj = {};
            if (this.guilds) {
                for (var guild in this.guilds) {
                    if (this.guilds[guild].u[body.cu]) {
                        if (this.guilds[guild].u[body.cu].t == 'invited') {
                            obj.icu = this.guilds[guild].n;
                            return obj;
                        } else {
                            return obj;
                        }
                    }
                };
            }
        }
    }

    addGuildRessource(body) {
        if (this.guilds[body.n]) {
            this.guilds[body.n].r += 1000000;
            return this.loadGuild(body);
        }
    }

    takeGuildRessource(body) {
        var obj = {};
        if (this.guilds[body.n]) {
            if ((this.guilds[body.n].u[body.cu].t == 'officier' || this.guilds[body.n].u[body.cu].t == 'master') && this.guilds[body.n].r >= 1000000) {
                this.guilds[body.n].r -= 1000000;
                obj.rgain = 1;
            }
            return obj;
        }
        return obj;
    }

    addScore(body) {
        if (this.guilds[body.n]) {
            this.guilds[body.n].s += body.s;
            return this.loadGuild(body);
        }
    }

    joinGuild(body) {
        if (this.guilds[body.n] && body.cu && this.guilds[body.n].u[body.cu]) {
            if (this.guilds[body.n].u[body.cu].t == 'invited') {
                this.guilds[body.n].u[body.cu].n = body.cun;
                this.guilds[body.n].u[body.cu].sr = body.r;
                this.guilds[body.n].u[body.cu].ss = body.s;
                this.guilds[body.n].u[body.cu].st = body.t;
                this.guilds[body.n].u[body.cu].sd = body.d;
                this.guilds[body.n].u[body.cu].stal = (Math.floor(body.r / 100000) + body.s + body.t + (body.d * 10));
                this.guilds[body.n].u[body.cu].t = 'recruit';
            }
            return this.loadGuild(body);
        }
    }

    invitMember(body) {
        if (this.guilds[body.n] && this.guilds[body.n].u[body.cu]) {
            if (this.guilds[body.n].u[body.cu].t == 'officier' || this.guilds[body.n].u[body.cu].t == 'master') {
                this.guilds[body.n].u[body.cui] = {};
                this.guilds[body.n].u[body.cui].t = 'invited';
            }
            return this.guilds[body.n];
        }
    }

    kickMember(body) {
        if (this.guilds[body.n] && this.guilds[body.n].u[body.cu] && this.guilds[body.n].u[body.cui]) {
            if (this.guilds[body.n].u[body.cu].t == 'officier' || this.guilds[body.n].u[body.cu].t == 'master')
                delete this.guilds[body.n].u[body.cui];
            return this.loadGuild(body);
        }
    }

    upGradeMember(body) {
        if (this.guilds[body.n] && this.guilds[body.n].u[body.cu] && this.guilds[body.n].u[body.cui]) {
            if ((this.guilds[body.n].u[body.cu].t == 'officier' || this.guilds[body.n].u[body.cu].t == 'master') && this.guilds[body.n].u[body.cui].t == 'master')
                this.guilds[body.n].u[body.cui].t = 'officier';
            return this.loadGuild(body);
        }
    }

    downGradeMember(body) {
        if (this.guilds[body.n] && this.guilds[body.n].u[body.cu] && this.guilds[body.n].u[body.cui]) {
            if (this.guilds[body.n].u[body.cu].t == 'officier' || this.guilds[body.n].u[body.cu].t == 'master')
                this.guilds[body.n].u[body.cui].t = 'recruit';
            return this.loadGuild(body);
        }
    }

    /*TRANSFER SHIP AND RESSOURCE*/
    transferShipToOther(body) {
        if (!this.transferShip[JSON.stringify(body.cu)])
            this.transferShip[JSON.stringify(body.cu)] = [];
        this.planets[body.id].sc1 -= 0;
        this.planets[body.id].sc2 -= body.sc2;
        this.planets[body.id].sc3 -= body.sc3;
        this.planets[body.id].sc4 -= body.sc4;
        this.planets[body.id].sc5 -= body.sc5;
        this.planets[body.id].sc6 -= body.sc6;
        this.planets[body.id].sc7 -= body.sc7;
        this.planets[body.id].r -= body.r;
        if (body.to != 0) {
            var transfer = {};
            transfer.byn = this.planets[body.id].on;
            transfer.sc1 = 0;
            transfer.sc2 = body.sc2;
            transfer.sc3 = body.sc3;
            transfer.sc4 = body.sc4;
            transfer.sc5 = body.sc5;
            transfer.sc6 = body.sc6;
            transfer.sc7 = body.sc7;
            transfer.r = body.r;
            transfer.to = body.to;
            transfer.cu = body.cu;
            transfer.time = Date.now() + (body.d * 1000);//distance
            this.transferShip[JSON.stringify(body.cu)].push(transfer);
            return transfer;
        }
    }

    checkTransferShip(idUser) {
        if (this.transferShip[idUser]) {
            this.transferShip[idUser] = this.transferShip[idUser].filter(function (el) {
                return el != null || undefined;
            });
            new Promise((resolve, reject) => {
                for (let index = 0; index < this.transferShip[idUser].length; index++) {
                    if (this.transferShip[idUser][index]) {
                        if (Date.now() > this.transferShip[idUser][index].time) {
                            if (this.transferShip[idUser][index].to != 0) {
                                this.planets[this.transferShip[idUser][index].to].sc1 += this.transferShip[idUser][index].sc1;
                                this.planets[this.transferShip[idUser][index].to].sc2 += this.transferShip[idUser][index].sc2;
                                this.planets[this.transferShip[idUser][index].to].sc3 += this.transferShip[idUser][index].sc3;
                                this.planets[this.transferShip[idUser][index].to].sc4 += this.transferShip[idUser][index].sc4;
                                this.planets[this.transferShip[idUser][index].to].sc5 += this.transferShip[idUser][index].sc5;
                                this.planets[this.transferShip[idUser][index].to].sc6 += this.transferShip[idUser][index].sc6;
                                this.planets[this.transferShip[idUser][index].to].sc7 += this.transferShip[idUser][index].sc7;
                                this.planets[this.transferShip[idUser][index].to].r += this.transferShip[idUser][index].r;
                                this.aopsc1 = this.transferShip[idUser][index].sc1;
                                this.aopsc2 = this.transferShip[idUser][index].sc2;
                                this.aopsc3 = this.transferShip[idUser][index].sc3;
                                this.aopsc4 = this.transferShip[idUser][index].sc4;
                                this.aopsc5 = this.transferShip[idUser][index].sc5;
                                this.aopsc6 = this.transferShip[idUser][index].sc6;
                                this.aopsc7 = this.transferShip[idUser][index].sc7;
                                var strs2 = ""; var strs3 = ""; var strs4 = ""; var strs5 = ""; var strs6 = ""; var strs7 = "";
                                if (this.aopsc2 > 0) strs2 = " " + this.aopsc2 + " Eagle,";
                                if (this.aopsc3 > 0) strs3 = " " + this.aopsc3 + " Terhen,";
                                if (this.aopsc4 > 0) strs4 = " " + this.aopsc4 + " Baltyor,";
                                if (this.aopsc5 > 0) strs5 = " " + this.aopsc5 + " Emperor,";
                                if (this.aopsc6 > 0) strs6 = " " + this.aopsc6 + " Crusader,";
                                if (this.aopsc7 > 0) strs7 = " " + this.aopsc7 + " Imperator,";
                                this.planets[this.transferShip[idUser][index].to].setBio("Fleet trip", "A fleet of" + this.transferShip[idUser][index].byn + " faction origin and composed of" + strs2 + strs3 + strs4 + strs5 + strs6 + strs7 + " and brings with it " + this.transferShip[idUser][index].r + " resources is arrived on your planet");
                                delete this.transferShip[idUser][index];
                            } else {
                                delete this.transferShip[idUser][index];
                            }
                        }
                    }
                }
                resolve('OK');
            })//.then(OK => console.log('check transfer ship')).catch(err => console.log(err));
        }
    }


    ///LOAD
    loadById(body) {
        if (body.id) {
                var biosave = this.planets[body.id].bio;
                var buildOrbitsave = this.planets[body.id].build;
                if (body.gn) this.planets[body.id].gn = body.gn
                if (body.t0) this.planets[body.id].t0 = body.t0
                if (body.t2) this.planets[body.id].t2 = body.t2
                if (body.t3) this.planets[body.id].t3 = body.t3
                if (body.t4) this.planets[body.id].t4 = body.t4
                if (body.t5) this.planets[body.id].t5 = body.t5
                if (body.t6) this.planets[body.id].t6 = body.t6
                if (body.n) {
                    if (body.cu == this.planets[body.id].o)
                        this.planets[body.id].on = body.n
                }
                //new Promise((resolve, reject) => {
                this.actualizOne(body.id);
                this.planets[body.id].rattrapageShipTechDef(this.politique);
                //resolve('OK');
                //})//.then(OK => console.log('Trade Tech Def Ship')).catch(err => console.log(err));
            if (body.cu)
                    this.checkTransferShip(body.cu);
            this.planets[body.id].dba = Math.floor(Date.now() - this.planets[body.id].tba);
            this.planets[body.id].u = [];
            var stringifiedPlanet = Object.assign(new Planet(), this.planets[body.id]);
            var gift = this.getPrimeOnPlanet(body);
            if (gift != undefined)
                stringifiedPlanet.gift = gift;
            if (this.aopsc1 + this.aopsc2 + this.aopsc3 + this.aopsc4 + this.aopsc5 + this.aopsc6 + this.aopsc7 > 0) {
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
            stringifiedPlanet.bo = this.planets[body.id].getBuildOrbit();
            stringifiedPlanet.bio = {};
            stringifiedPlanet.build = [];
            this.checkEvent();
            stringifiedPlanet.ems = this.postMineEm.system;
            stringifiedPlanet.emhp = this.postMineEm.hp;
            this.planets[body.id].u = this;
            this.planets[body.id].bio = biosave;
            this.planets[body.id].build = buildOrbitsave;
            stringifiedPlanet.gst = this.checkSuccessTrade(body);
            stringifiedPlanet.gsht = this.checkShipTrade(body);
            return stringifiedPlanet;
        }
    }

    loadAll() {
        this.actualizAll();
        return this.planets;
    }

    ///SAVE
    Save() {
        try {
            let data = JSON.stringify(this.transferShip);
            fs.writeFile('saveTransfer.json', data, (err) => {
                if (err) throw err;
            });
        } catch (err) {
            console.error(err);
        }
        try {
            let data = JSON.stringify(this.guilds);
            fs.writeFile('saveGuilds.json', data, (err) => {
                if (err) throw err;
            });
        } catch (err) {
            console.error(err);
        }
        try {
            this.actualizAll();
            let data = JSON.stringify(this.planets);
            fs.writeFile('save.json', data, (err) => {
                if (err) throw err;
                this.addUtoAll();
            });
        } catch (err) {
            console.error(err);
        }
        try {
            let data = JSON.stringify(this.usersScore);
            fs.writeFile('saveUsersScore.json', data, (err) => {
                if (err) throw err;
            });
        } catch (err) {
            console.error(err);
        }
        try {
            let data = JSON.stringify(this.bioPre);
            fs.writeFile('biopre.json', data, (err) => {
                if (err) throw err;
            });
        } catch (err) {
            console.error(err);
        }
        try {
            let data = JSON.stringify(this.tradeSuccess);
            fs.writeFile('tradeSuccess.json', data, (err) => {
                if (err) throw err;
            });
        } catch (err) {
            console.error(err);
        }
        try {
            let data = JSON.stringify(this.tradeShip);
            fs.writeFile('tradeShip.json', data, (err) => {
                if (err) throw err;
            });
        } catch (err) {
            console.error(err);
        }
        try {
            let data = JSON.stringify(this.giftTrade);
            fs.writeFile('giftTrade.json', data, (err) => {
                if (err) throw err;
            });
        } catch (err) {
            console.error(err);
        }

        
        try {
            let data = JSON.stringify(this.politique);
            fs.writeFile('politique.json', data, (err) => {
                if (err) throw err;
                console.log('Data written to file');
            });
        } catch (err) {
            console.error(err);
        }


    }

    generate() {
        fs.readFile('save.json', (err, data) => {
            if (err) throw err;
            let planets = JSON.parse(data);
            for (let index = 0; index < planets.length; index++) {
                this.planets.push(Object.assign(new Planet(this), planets[index]));
            }
            this.addUtoAll();
        });
        fs.readFile('saveTransfer.json', (err, data) => {
            if (err) throw err;
            this.transferShip = JSON.parse(data);
        });
        fs.readFile('saveGuilds.json', (err, data) => {
            if (err) throw err;
            this.guilds = JSON.parse(data);
        });
        fs.readFile('saveUsersScore.json', (err, data) => {
            if (err) throw err;
            this.usersScore = JSON.parse(data);
        });
        
        fs.readFile('politique.json', (err, data) => {
            if (err) throw err;
            this.politique = JSON.parse(data);
        });
        
        fs.readFile('biopre.json', (err, data) => {
            if (err) throw err;
            this.bioPre = JSON.parse(data);
        });
        
        fs.readFile('giftTrade.json', (err, data) => {
            if (err) throw err;
            this.giftTrade = JSON.parse(data);
        });
        
        fs.readFile('tradeSuccess.json', (err, data) => {
            if (err) throw err;
            this.tradeSuccess = JSON.parse(data);
        });
        
        fs.readFile('tradeShip.json', (err, data) => {
            if (err) throw err;
            this.tradeShip = JSON.parse(data);
        });

        


        /*for (let index = 0; index <= 500; index++) {
            var fd = Date.now()+randomIntFromInterval(300000,1000000);
            var planet = new Planet(this,index,randomIntFromInterval(2,4),fd,fd+randomIntFromInterval(10000,90000),randomIntFromInterval(0,3),randomIntFromInterval(15,25),randomIntFromInterval(3,5),randomIntFromInterval(3,5),0,0,0,randomIntFromInterval(1,5),0,0,0,0,0,0,0,Date.now(),1,1,1,1,[],"");
            planet.t0 = 1; //laser
            planet.t2 = 1; //missile
            planet.t3 = 1; //shield
            planet.t4 = 1; //alloy
            planet.t5 = 1; //plasma
            planet.t6 = 1; //combustion
            planet.generateAttackPnj();
            this.planets.push(planet);
        }
        this.createPolitics();
        this.politique.e = 1;
        this.Save();*/
        this.createQuest();
        //this.questCheck();
        setInterval(() => {
            this.Save();
        }, 2640000);//26400000
    }

    actualizOne(id) {
        this.planets[id].checkFight(this);
    }

    actualizAll() {
        for (let index = 0; index < this.planets.length; index++) {
            this.planets[index].checkFight(this);
            this.planets[index].u = [];
        }
    }

    addUtoAll() {
        for (let index = 0; index < this.planets.length; index++) {
            this.planets[index].u = this;
        }
    }

    addPrimeOnPlanet(body) {
        this.planets[body.id].p += 1;
        this.planets[body.id].setBio("Hunting bounty", "The planet received a million ressource hunting bounty");
        return this.loadById(body);
    }

    getPrimeOnPlanet(body) {
        var gift;
        if (this.planets[body.id].p) {
            gift = this.planets[body.id].p;
            this.planets[body.id].p = 0;
        }
        return gift;
    }


    createQuest() {
        this.quest.p = {};//participant
        this.quest.rmax = randomIntFromInterval(1000000, 10000000);//ressourcemax
        this.quest.smax = randomIntFromInterval(100, 10000);//shipmax 
        this.quest.r = 0;
        this.quest.s = 0;
        this.quest.tbe = Date.now() + 3600000;//time before end//1 hour
        var newquest;
        for (let index = 0; index < 10; index++) {
            newquest = randomIntFromInterval(1, 10);
            if (newquest != this.quest.id)
                break;
        }
        this.quest.id = newquest;
    }

    questAddParticipation(body) {
        if (this.planets[body.id]) {
            this.planets[body.id].sc2 -= body.sc2;
            this.planets[body.id].sc3 -= body.sc3;
            this.planets[body.id].sc4 -= body.sc4;
            this.planets[body.id].sc5 -= body.sc5;
            this.planets[body.id].sc6 -= body.sc6;
            this.planets[body.id].sc7 -= body.sc7;
            this.planets[body.id].r -= body.r;
        }
        if (this.quest.p[body.cu] == undefined)
            this.quest.p[body.cu] = {};
        if (body.r != undefined) this.quest.p[body.cu].r += body.r;
        this.quest.p[body.cu].s += ((body.sc2 * 1) + (body.sc3 * 2) + (body.sc4 * 3) + (body.sc5 * 5) + (body.sc6 * 20) + (body.sc7 * 30));
        if (body.r != undefined) this.quest.r += body.r;
        this.quest.s += ((body.sc2 * 1) + (body.sc3 * 2) + (body.sc4 * 3) + (body.sc5 * 5) + (body.sc6 * 20) + (body.sc7 * 30));
        if (this.quest.r > this.quest.rmax)
            this.quest.r = this.quest.rmax;
        if (this.quest.s > this.quest.smax)
            this.quest.s = this.quest.smax;
        this.quest.p[body.cu].cu = body.cu;
        return this.getQuest(body);
    }

    questCheck() {
        if (Date.now() > this.quest.tbe)
            this.questEnd();
    }

    getQuest(body) {
        var obj = {};
        obj.r = this.quest.r;
        obj.s = this.quest.s;
        obj.rmax = this.quest.rmax;
        obj.smax = this.quest.smax;
        obj.id = this.quest.id;
        obj.p = this.quest.p.length;
        obj.tbe = Math.floor((this.quest.tbe - Date.now()) / 60000);//minute restant
        obj.pr = 0;
        obj.ps = 0;
        if (this.quest.p[body.cu] != undefined) {
            obj.pr = this.quest.p[body.cu].r;
            obj.ps = this.quest.p[body.cu].s;
        }
        return obj;
    }

    questEnd() {
        new Promise((resolve, reject) => {
            if (this.quest.p) {
                for (let index = 0; index < this.quest.p.length; index++) {
                    this.questAddLoot(this.quest.p[index].cu);
                }
            }
            delete this.quest.p;
            if (Date.now() > this.quest.tbe + (3600000 / 4))//laisser la quete finish 1 quart d'h
                this.createQuest();
            resolve('OK');
        })
    }

    questAddLoot(cu) {
        var loot = {};
        loot.bonusRess = 1;//multiplie le loot de ressource
        loot.bonusShip = 1;//multiplie la création des vaisseau
        loot.bonusTech = 1;//multiplie la création de technologie
        loot.bonusDef = 1;//multiplie la création de défense
        loot.at0 = 1;
        loot.at2 = 1;
        loot.at3 = 1;
        loot.at4 = 1;
        loot.at5 = 1;
        loot.at6 = 1;
        loot.rc = 1;
        loot.rx = 1;
        loot.rd = 1;
        if (!this.loot[cu])
            this.loot[cu] = [];
        this.loot[cu].push(loot)
    }

    /*questListLoot(){
        var obj = {};
        var str = '';
        var page = 1;
        var nbrPage = Math.floor(this.bio.length/10)+1;
        //if(nbrPage < 1) nbrPage = 1;
        if(body.page > 1){page = (body.page*5)}
        for (let index = 0+page-1; index < page+10; index++) {
            if(this.bio[index]) str = str+this.bio[index].t+"|";
        }
        this.bio.reverse();
        obj.listbio = str;
        obj.nbrpage = nbrPage;
    }*/

    questGetLoot() {
        var obj = {};
        if (this.loot[body.cu]) {
            for (let index = 0; index < this.loot[body.cu].length; index++) {
                if (index == body.idloot && this.loot[body.cu][index])
                    return this.loot[body.cu][body.idloot];
            }
        }
        return obj;
    }

    questEquipLoot() {
        var obj = {};
        if (this.loot[body.cu]) {
            for (let index = 0; index < this.loot[body.cu].length; index++) {
                if (index == body.idloot && this.loot[body.cu][index])
                    this.lootEquiped = this.loot[body.cu][body.idloot];
            }
        }
        return obj;
    }

    questDeleteLoot() {
        var obj = {};
        if (this.loot[body.cu]) {
            for (let index = 0; index < this.loot[body.cu].length; index++) {
                if (index == body.idloot && this.loot[body.cu][index]) {
                    delete this.loot[body.cu][body.idloot];
                    return this.loot[body.cu][body.idloot];
                }
            }
        }
        return obj;
    }

    listBioByPage(body) {
        return this.planets[body.id].listBioByPage(body);;
    }

    getBio(body) {
        return this.planets[body.id].getBio(body);
    }

    createEvent(){
        for (let index = 0; index <= 50; index++) {
            this.postMine[index] = {};
        }
        this.postMineEm.system = 0;
        this.event.tba = Date.now() + (86400000 / 12)/*+ (randomIntFromInterval(1640000, 8600000))*/;//1 jour
        this.event.tea = this.tba + (86400000 / 12);//2heure
    }

    checkEvent() {
        if (Date.now() > this.event.tba/*&& this.event.ua == 0*/) {
            if(this.postMineEm.hp <= 0)
                this.createEM();
        }
    }

    createEM(){
        this.event.tba = Date.now() + (86400000 / 12);//2heure
        this.postMineEm.a = 0;
        this.postMineEm.d = Date.now();
        this.postMineEm.hp = 100000;
        this.postMineEm.system = randomIntFromInterval(1,49);
    }

    dmgEM(){
        if (this.postMineEm){
            this.postMineEm.hp -= 1;
            if (this.postMineEm.hp <= 0){
                this.destroyEM();
            }
        }
    }

    destroyEM(){
        this.createEvent();
    }

    sendMineTaxe(body){
        var obj = {};
        this.politique.f += -Math.floor(body.tr-(body.tr*((this.politique.tm/100)+1)));
        obj.tr = body.tr+Math.floor(body.tr-(body.tr*((this.politique.tm/100)+1)));
        return obj;
    }

    sendCargoDestroy(body){
        this.politique.f -= 1000000;
        if(body.pc == 1)
            this.politique.sc1 -= 1;
        if(body.pc == 2)
            this.politique.sc2 -= 1;
        if(body.pc == 3)
            this.politique.sc3 -= 1;
        if(body.pc == 4)
            this.politique.sc4 -= 1;
        if(body.pc == 5)
            this.politique.sc5 -= 1;
        if(body.pc == 6)
            this.politique.sc6 -= 1;
        if(body.pc == 7)
            this.politique.sc7 -= 1;
        return {};
    }

    sendPostMine(body) {
        if (body.cu){
            if (!this.postMine[body.ss])
                this.postMine[body.ss] = {};
            if (!this.postMine[body.ss][body.cu])
                this.postMine[body.ss][body.cu] = {};
            this.postMine[body.ss][body.cu].idg = body.idg;
            this.postMine[body.ss][body.cu].x = body.x;
            this.postMine[body.ss][body.cu].y = body.y;
            this.postMine[body.ss][body.cu].a = body.a;
            this.postMine[body.ss][body.cu].cu = body.cu;
            this.postMine[body.ss][body.cu].id = body.id;
            this.postMine[body.ss][body.cu].n = body.n;
            this.postMine[body.ss][body.cu].hp = body.hp;
            this.postMine[body.ss][body.cu].d = Date.now();
        }
        var obj = {};
        obj.idg = '';
        obj.x = '';
        obj.y = '';
        obj.a = '';
        obj.cu = '';
        obj.id = '';
        obj.n = '';
        obj.hp = '';
        if(body.ss != undefined){
            if(body.pc == 1)
                this.politique.sc1 += body.pv/10;
            if(body.pc == 2)
                this.politique.sc2 += body.pv/10;
            if(body.pc == 3)
                this.politique.sc3 += body.pv/10;
            if(body.pc == 4)
                this.politique.sc4 += body.pv/10;
            if(body.pc == 5)
                this.politique.sc5 += body.pv/10;
            if(body.pc == 6)
                this.politique.sc6 += body.pv/10;
            if(body.pc == 7)
                this.politique.sc7 += body.pv;
            for (let [key, value] of Object.entries(this.postMine[body.ss])) {
                if(Date.now() > value.d+1000 ){
                    obj.hp = obj.hp + 0 + '|';
                }else{
                    obj.hp = obj.hp + value.hp + '|';
                }
                obj.idg = obj.idg + value.idg + '|';
                obj.x = obj.x + value.x + '|';
                obj.y = obj.y + value.y + '|';
                obj.a = obj.a + value.a + '|';
                obj.cu = obj.cu + value.cu + '|';
                obj.id = obj.id + value.id + '|';
                obj.n = obj.n + value.n + '|';
            }
        }
        this.checkEvent();
            if(this.postMineEm.d+10 < Date.now()){
                this.postMineEm.d = Date.now();
                if(this.postMineEm.a > 359){
                    this.postMineEm.a = 0;
                }else{
                    this.postMineEm.a += 0.01;
                }
            }
            this.postMineEm.a = Math.floor(this.postMineEm.a* 1000) / 1000
            obj.ema = this.postMineEm.a;//etoile de la mort angle
        obj.ems = this.postMineEm.system;
        obj.emhp = this.postMineEm.hp;//etoile de la mort hp
        return obj;
    }

    createPolitics(){
        this.politique = {};
        this.politique.f = 10000000;//fortune
        this.politique.tbm = 50;//taxeByMinute
        this.politique.tm = 50;//taxeMining
        //this.politique.vitMining = 100;
        this.politique.vs = 50;//vitShip
        this.politique.vt = 50;//vitTech
        this.politique.vd = 50;//vitDef
        //this.politique.prodMining = 100;
        this.politique.ps = 50;//prodShip
        this.politique.pt = 50;//prodTech
        this.politique.pd = 50;//prodDef
        this.politique.pn = '';//president name
        this.politique.pid = 0;//president id
        this.politique.vp = 0;//president id
        this.politique.tbpf = Date.now();//time before pick fortune
        this.politique.sc1 = 1000;
        this.politique.sc2 = 1000;
        this.politique.sc3 = 1000;
        this.politique.sc4 = 1000;
        this.politique.sc5 = 1000;
        this.politique.sc6 = 1000;
        this.politique.sc7 = 1000;

        this.politique.alreadyVote = [];
        this.politique.alreadyVotePre = [];

        this.politique.te = Date.now();//timeElection
        this.clearElu();
    }

    changeTbm(body){
        this.politique.tbm = body.tbm;
        return this.getPolitics(body);
    }

    changeTm(body){
        this.politique.tm = body.tm;
        return this.getPolitics(body);
    }

    changeVs(body){
        this.politique.vs = body.vs;
        return this.getPolitics(body);
    }

    changeVt(body){
        this.politique.vt = body.vt;
        return this.getPolitics(body);
    }

    changeVd(body){
        this.politique.vd = body.vd;
        return this.getPolitics(body);
    }

    changePs(body){
        this.politique.ps = body.ps;
        return this.getPolitics(body);
    }

    changePt(body){
        this.politique.pt = body.pt;
        return this.getPolitics(body);
    }

    changePd(body){
        this.politique.pd = body.pd;
        return this.getPolitics(body);
    }

    getPolitics(body){//envoi toutes les 10 minute et au lancement côter client
        var obj = {};
        obj.f = this.politique.f;
        obj.tbm = this.politique.tbm;
        obj.tm = this.politique.tm;
        obj.vs = this.politique.vs;
        obj.vt = this.politique.vt;
        obj.vd = this.politique.vd;
        obj.ps = this.politique.ps;
        obj.pt = this.politique.pt;
        obj.pd = this.politique.pd;
        obj.pn = this.politique.pn;
        obj.pid = this.politique.pid;
        obj.te = this.politique.te;

        obj.elun1 = this.politique.elu[0].n;
        obj.elun2 = this.politique.elu[1].n;
        obj.elun3 = this.politique.elu[2].n;
        obj.elun4 = this.politique.elu[3].n;
        obj.elun5 = this.politique.elu[4].n;
        obj.elun6 = this.politique.elu[5].n;
        obj.elun7 = this.politique.elu[6].n;
        obj.elun8 = this.politique.elu[7].n;
        obj.elun9 = this.politique.elu[8].n;
        obj.elun10 = this.politique.elu[9].n;
        obj.eluv1 = this.politique.elu[0].vote;
        obj.eluv2 = this.politique.elu[1].vote;
        obj.eluv3 = this.politique.elu[2].vote;
        obj.eluv4 = this.politique.elu[3].vote;
        obj.eluv5 = this.politique.elu[4].vote;
        obj.eluv6 = this.politique.elu[5].vote;
        obj.eluv7 = this.politique.elu[6].vote;
        obj.eluv8 = this.politique.elu[7].vote;
        obj.eluv9 = this.politique.elu[8].vote;
        obj.eluv10 = this.politique.elu[9].vote;
        obj.pv = this.politique.pv;
        obj.sc1 = Math.floor(this.politique.sc1);
        obj.sc2 = Math.floor(this.politique.sc2);
        obj.sc3 = Math.floor(this.politique.sc3);
        obj.sc4 = Math.floor(this.politique.sc4);
        obj.sc5 = Math.floor(this.politique.sc5);
        obj.sc6 = Math.floor(this.politique.sc6);
        obj.sc7 = Math.floor(this.politique.sc7);

        this.politique.e = 0;
        obj.v = 0;
        obj.vp = 0;
        if(this.politique.alreadyVote.indexOf(body.id) != -1)
            obj.v = 1;
        if(this.politique.alreadyVotePre.indexOf(body.id) != -1)
            obj.vp = 1;
        if(Date.now() > this.politique.tbpf && body.id == this.politique.pid){
            obj.timePf = 'Take 1 M resources from the state coffers';
        }else if (body.id == this.politique.pid){
            obj.timePf = 'Wait '+Math.floor(-((Date.now()-(this.politique.tbpf))/60000))+' minute'
        }
        if(Date.now() > this.politique.te && Date.now() < this.politique.te+(60000*10))
            obj.time = 'Election in '+Math.floor(-((Date.now()-(this.politique.te+(60000*10)))/60000))+' minute'
        if(Date.now() > this.politique.te+(60000*10) && Date.now() < this.politique.te+(60000*60))
            obj.time = 'New election in '+Math.floor(-((Date.now()-(this.politique.te+(60000*60)))/60000))+' minute'
        if(Date.now() > this.politique.te+(60000*10)){// 10 minute
            this.elir();
        }
        if(Date.now() > this.politique.te+(60000*60)){//1 heure
            this.clearElu();
        }
        obj.e = this.politique.e;
        return obj;
    }

    addElu(body){
        var already = 0
        for (let index = 0; index < 5; index++) {
            if(this.politique.elu[index].id == body.eluid){
                already = 1
            }
        }
        if (already == 0) {
            for (let index = 0; index < 5; index++) {
                if(this.politique.elu[index].id == ''){
                    this.politique.elu[index].id = body.eluid;//eluid
                    this.politique.elu[index].n = body.elun;//eluName
                    break;
                }
            }
        }
        return this.getPolitics(body);
    }

    elir(){
        var elir = -1;
        var vote = 0;
        for (let index = 0; index < 10; index++) {
            if(this.politique.elu[index].id != '' && this.politique.elu[index].vote > vote){
                elir = index;
            }
        }
        if(elir == -1){
            for (let index = 0; index < 10; index++) {
                if(this.politique.elu[index].id != ''){
                    elir = index;
                }
            }
        }else{
            this.politique.pid = this.politique.elu[elir].id;
            this.politique.pn = this.politique.elu[elir].n;
        }
        if(this.politique.pid != 0)
            this.politique.e = 1;
    }

    voteElu(body){
        if(this.politique.alreadyVote.indexOf(body.id) == -1){
            this.politique.elu[body.vote].vote += 1;
            this.politique.alreadyVote.push(body.id)
        }
        return this.getPolitics(body);
    }

    unvoteElu(body){
        if(this.politique.alreadyVote.indexOf(body.id) != -1){
            this.politique.elu[body.vote].vote -= 1;
            this.politique.alreadyVote.splice(this.politique.alreadyVote.indexOf(body.id), 1);
        }
        return this.getPolitics(body);
    }

    votePre(body){
        if(this.politique.alreadyVotePre.indexOf(body.id) == -1){
            this.politique.pv += 1;
            this.politique.alreadyVotePre.push(body.id)
        }
        return this.getPolitics(body);
    }

    unvotePre(body){
        if(this.politique.alreadyVotePre.indexOf(body.id) != -1){
            this.politique.pv -= 1;
            this.politique.alreadyVotePre.splice(this.politique.alreadyVotePre.indexOf(body.id), 1);
        }
        return this.getPolitics(body);
    }

    clearElu(){
        this.setBioPre(this.politique.pn,this.politique.pv);
        this.politique.elu = [];
        for (let index = 0; index < 10; index++) {
            this.politique.elu[index] = {};//elu
            this.politique.elu[index].id = '';//eluid
            this.politique.elu[index].n = '';//eluName
            this.politique.elu[index].vote = 0;//eluVote
        }
        this.politique.pid = 0;
        this.politique.pn = '';
        this.politique.pv = 0;
        this.politique.te = Date.now();//timeElection

        this.politique.alreadyVote = [];
        this.politique.alreadyVotePre = [];
    }

    setBioPre(t, d1) {
        if (t != 0 && t != '') {
            var bio = {};
            var current_datetime = new Date();
            var formatted_date = current_datetime.getFullYear() + "/" + (current_datetime.getMonth() + 1) + "/" + current_datetime.getDate() + "  -  " + current_datetime.getHours() + ":" + current_datetime.getMinutes() + ":" + current_datetime.getSeconds();
            bio.t = t;
            bio.d = formatted_date;
            bio.d1 = d1;
            this.bioPre.push(bio);
        }
    }

    listBioPre(body) {
        if (body.page) {
            this.bioPre.reverse();
            var obj = {};
            var str = '';
            var page = 1;
            var nbrPage = Math.floor(this.bioPre.length / 10) + 1;
            if (body.page > 1) { page = (body.page * 5) }
            for (let index = 0 + page - 1; index < page + 10; index++) {
                if (this.bioPre[index]) str = str + this.bioPre[index].d + " - " + this.bioPre[index].t + " : "+ this.bioPre[index].d1 + " Vote" + "|";
            }
            this.bioPre.reverse();
            obj.listbio = str;
            obj.nbrpage = nbrPage;
            return obj;
        }
    }

    pickMoney(body){
        var obj = this.getPolitics(body);
        if (Date.now() > this.politique.tbpf){
            this.politique.tbpf = Date.now()+(60000*10);//time before pick money
            this.politique.f -= 1000000;
            obj.pf = 1;//pick fortune
            return obj;
        }
        return obj;
    }

    sellSuccessTrade(body){
        var obj = {};
        var alreadySent = 0;
        obj.success = 0;
        if(!this.tradeSuccess[body.id]){
            this.tradeSuccess[body.id] = [];
            this.tradeSuccess[body.id] = this.tradeSuccess[body.id].filter(function (el) { //suprimer empty element of array
                return el != empty;
            });
        }
        for (let index = 0; index < this.tradeSuccess[body.id].length; index++) {
            if(this.tradeSuccess[body.id][index].cu = body.cu){
                alreadySent = 1
            }
        }
        if(alreadySent == 0){
            var newObj = {};
            newObj.price = body.p;
            newObj.namePlayer = body.np;
            newObj.cu = body.cu;
            this.tradeSuccess[body.id].push(newObj);
            obj.success = 1;
            obj.isuccess = body.id;
        }
        return obj;
    }

    checkSuccessTrade(body){
        var prime = 0;
        if(this.giftTrade[body.cu]){
            prime = this.giftTrade[body.cu].prime;
            this.giftTrade[body.cu].prime = 0;
        }
        return prime;
    }

    buySuccessTrade(body){
        var obj = {};
        obj.success = 0;
        var success = 0;
        if(this.tradeSuccess[body.id]){
            for (let index = 0; index < this.tradeSuccess[body.id].length; index++) {
                if(this.tradeSuccess[body.id][index].cu == body.i){
                    success = this.tradeSuccess[body.id][index].price;
                    if(!this.giftTrade[this.tradeSuccess[body.id][index].cu]){
                        this.giftTrade[this.tradeSuccess[body.id][index].cu] = {}; 
                        this.giftTrade[this.tradeSuccess[body.id][index].cu].prime = 0;
                        this.giftTrade[this.tradeSuccess[body.id][index].cu].cu = body.cu; 
                    }
                    this.giftTrade[this.tradeSuccess[body.id][index].cu].prime += success;
                    this.tradeSuccess[body.id].splice(this.tradeSuccess[body.id].indexOf(index), 1);
                    obj = this.listSuccessTrade(body);
                    obj.success = parseInt(success);
                    obj.isuccess = body.id;
                }
            }
        }
        return obj;
    }

    listSuccessTrade(body) {
        if (body.page) {
            var obj = {};
            var str = '';
            var page = 1;
            var key = 1;
            if(this.tradeSuccess[body.id]){
                var nbrPage = Math.floor(this.tradeSuccess[body.id].length / 10) + 1;
            }else{
                var nbrPage = 1
            }
            if (body.page > 1) { page = (body.page * 5) }
            if(this.tradeSuccess[body.id]){
                for (let index = 0 + page - 1; index < page + 10; index++) {
                    if (this.tradeSuccess[body.id][index]){
                        str = str +  (body.id+1) + '-' + this.tradeSuccess[body.id][index].namePlayer + '-' + this.tradeSuccess[body.id][index].price + '|';
                        obj[key] = this.tradeSuccess[body.id][index].cu;
                        obj[key+10] = this.tradeSuccess[body.id][index].price;
                        key += 1;
                    }
                }
            }
            obj.str = str;
            obj.nbrpage = nbrPage;
            return obj;
        }
    }


    

    sellShipTrade(body){
        var obj = {};
        obj.success = 0;
        if(!this.tradeShip[body.id]){
            this.tradeShip[body.id] = [];
            this.tradeShip[body.id] = this.tradeShip[body.id].filter(function (el) { //suprimer empty element of array
                return el != empty;
            });
        }
            var newObj = {};
            newObj.price = body.p;
            newObj.namePlayer = body.np;
            newObj.nameShip = body.ns;
            newObj.planetnowid = body.pn;
            newObj.cu = body.cu;
            newObj.id = body.id;
            newObj.idaleat = randomIntFromInterval(1,99999999);
            newObj.nbr = body.nbr;
            newObj.pn = body.pn;
            newObj.d = Date.now();
            this.tradeShip[body.id].push(newObj);
            obj.success = 1;
            obj.isuccess = body.id;
            obj.pn = body.pn;
            obj.nbr = body.nbr;
            if(this.planets[body.pn].sc1 >= body.nbr && body.id == 0)
                this.planets[body.pn].sc1 -= body.nbr;
            if(this.planets[body.pn].sc2 >= body.nbr && body.id == 1)
                this.planets[body.pn].sc2 -= body.nbr;
            if(this.planets[body.pn].sc3 >= body.nbr && body.id == 2)
                this.planets[body.pn].sc3 -= body.nbr;
            if(this.planets[body.pn].sc4 >= body.nbr && body.id == 3)
                this.planets[body.pn].sc4 -= body.nbr;
            if(this.planets[body.pn].sc5 >= body.nbr && body.id == 4)
                this.planets[body.pn].sc5 -= body.nbr;
            if(this.planets[body.pn].sc6 >= body.nbr && body.id == 5)
                this.planets[body.pn].sc6 -= body.nbr;
            if(this.planets[body.pn].sc7 >= body.nbr && body.id == 6)
                this.planets[body.pn].sc7 -= body.nbr;
        return obj;
    }

    checkShipTrade(body){
        var prime = 0;
        if(this.giftTrade[body.cu]){
            prime = this.giftTrade[body.cu].prime;
            this.giftTrade[body.cu].prime = 0;
        }
        return prime;
    }

    buyShipTrade(body){
        var obj = {};
        obj.success = 0;
        var success = 0;
        var pn = 0;
        var nbr = 0;
        if(body.pn == 0){
            this.planets[body.pn].r = 1000000000;
        }
        if(this.tradeShip[body.id]){
            for (let index = 0; index < this.tradeShip[body.id].length; index++) {
                if(this.tradeShip[body.id][index].cu == body.i && this.planets[body.pn].r >= this.tradeShip[body.id][index].price){
                    success = this.tradeShip[body.id][index].price;
                    pn = this.tradeShip[body.id][index].pn;
                    nbr = this.tradeShip[body.id][index].nbr;
                    if(!this.giftTrade[this.tradeShip[body.id][index].cu]){
                        this.giftTrade[this.tradeShip[body.id][index].cu] = {}; 
                        this.giftTrade[this.tradeShip[body.id][index].cu].prime = 0;
                        this.giftTrade[this.tradeShip[body.id][index].cu].cu = this.tradeShip[body.id][index].cu; 
                    }

                    this.planets[body.pn].r -= success;
                    if(this.tradeShip[body.id][index].id == 0)
                        this.planets[body.pn].sc1 += this.tradeShip[body.id][index].nbr;
                    if(this.tradeShip[body.id][index].id == 1)
                        this.planets[body.pn].sc2 += this.tradeShip[body.id][index].nbr;
                    if(this.tradeShip[body.id][index].id == 2)
                        this.planets[body.pn].sc3 += this.tradeShip[body.id][index].nbr;
                    if(this.tradeShip[body.id][index].id == 3)
                        this.planets[body.pn].sc4 += this.tradeShip[body.id][index].nbr;
                    if(this.tradeShip[body.id][index].id == 4)
                        this.planets[body.pn].sc5 += this.tradeShip[body.id][index].nbr;
                    if(this.tradeShip[body.id][index].id == 5)
                        this.planets[body.pn].sc6 += this.tradeShip[body.id][index].nbr;
                    if(this.tradeShip[body.id][index].id == 6)
                        this.planets[body.pn].sc7 += this.tradeShip[body.id][index].nbr;

                    this.giftTrade[this.tradeShip[body.id][index].cu].prime += success;
                    this.tradeShip[body.id].splice(this.tradeShip[body.id].indexOf(index), 1);
                    obj = this.listSuccessTrade(body);
                    obj.success = parseInt(success);
                    obj.isuccess = body.id;
                    obj.pn = parseInt(pn);
                    obj.nbr = parseInt(nbr);
                }
            }
        }
        return obj;
    }

    listShipTrade(body) {
        if (body.page) {
            var obj = {};
            var str = '';
            var page = 1;
            var key = 1;
            if(this.tradeShip[body.id]){
                var nbrPage = Math.floor(this.tradeShip[body.id].length / 10) + 1;
            }else{
                var nbrPage = 1
            }
            if (body.page > 1) { page = (body.page * 5) }
            if(this.tradeShip[body.id]){
                for (let index = 0 + page - 1; index < page + 10; index++) {
                    if (this.tradeShip[body.id][index]){
                        if(Date.now() > this.tradeShip[body.id][index].d+(86400000*30)){
                            this.tradeShip[body.id].splice(this.tradeShip[body.id].indexOf(index), 1);
                        }else{
                            str = str +  this.tradeShip[body.id][index].namePlayer + " sell " + this.tradeShip[body.id][index].nbr +" " + this.tradeShip[body.id][index].nameShip + ' for ' + this.tradeShip[body.id][index].price + '|';
                            obj[key] = this.tradeShip[body.id][index].cu;
                            obj[key+10] = this.tradeShip[body.id][index].price;
                            key += 1;
                        }
                    }
                }
            }
            obj.str = str;
            obj.nbrpage = nbrPage;
            return obj;
        }
    }
    

}

module.exports = Universe;


