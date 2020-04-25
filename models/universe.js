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
            this.gift = [];
            this.postMine = [];
            this.giftQuest = {};
            this.giftQuest.p = {};
            this.quest = {};
            this.quest.p = {};
            this.message = [];
            this.messageInfo = {};
            this.event = 0;
            this.aopsc1 = 0;
            this.aopsc2 = 0;
            this.aopsc3 = 0;
            this.aopsc4 = 0;
            this.aopsc5 = 0;
            this.aopsc6 = 0;
            this.aopsc7 = 0;
            this.loot = [];
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
            for (let index = indexClose-10; index < this.usersScore.length; index++) {
                if(this.usersScore[index]){
                        breakIndex += 1;
                        str = str+this.usersScore[index].n+"-"+""+"-"+this.usersScore[index].st+"-"+this.usersScore[index].r+"-"+this.usersScore[index].s+"-"+this.usersScore[index].t+"-"+this.usersScore[index].d+"-"+''+"-"+''+"-"+''+"-"+''+"-"+''+"-|";
                }
                if(breakIndex > 6)
                    break;
            }
            this.usersScore = this.usersScore.filter(function (el) { //suprimer empty element of array
                return el != null || undefined; 
            }); 
            return str;//usersScore;
        }

        loadUsersGuild(body){
            var breakIndex = 0;
            var str = "---------------------|";
            if(this.guilds[body.gn]){
                var str = "";
                for(var prop in this.guilds[body.gn].u) {
                    if(prop){
                            breakIndex += 1;
                            str = str+this.guilds[body.gn].u[prop].t.toUpperCase()+" : "+this.guilds[body.gn].u[prop].n+"-"+""+"-"+this.guilds[body.gn].u[prop].stal+"-"+this.guilds[body.gn].u[prop].sr+"-"+this.guilds[body.gn].u[prop].ss+"-"+this.guilds[body.gn].u[prop].st+"-"+this.guilds[body.gn].u[prop].sd+"-"+prop+"-"+"-"+"-"+"-"+"-"+"|";
                    }
                    if(breakIndex > 30)
                        break;
                }
            }
            return str;
        }

        /*MESSAGE*/
        addMessage(body){
            var message = {};
            setTimeout(() => {
                if(body.m != ""){
                    var current_datetime = new Date()
                    var formatted_date = current_datetime.getFullYear() + "/" + (current_datetime.getMonth() + 1) + "/" + current_datetime.getDate() + ";" + current_datetime.getHours() + ":" + current_datetime.getMinutes() + ":" + current_datetime.getSeconds() 
                    if(body.g == ""){//guild 0
                        message.m = body.m
                        message.g = body.g
                        message.d = formatted_date;
                        message.t = 1; //type 1 no guild no private
                        if(body.by)//id
                            message.by = body.by;
                        if(body.byn)//name
                            message.byn = body.byn;
                        if(body.to){//id //name
                            message.to = body.to;
                            message.ton = 'test';//body.ton;
                            message.t = 2; //type 2 no guild but private
                        }
                        this.message.push(message);
                    }else if(body.g != ""){
                        message.g = body.g
                        message.m = body.m
                        message.d = formatted_date;
                        message.t = 3; //type 1 no guild no private
                        if(body.by)//id
                            message.by = body.by;
                        if(body.byn)//name
                            message.byn = body.byn;
                        this.message.push(message);
                    }
                } 
            }, 1);
            return this.loadLastTenMessage(body);
        }

        loadLastTenMessage(body){
            var str = "";
            var messages = [];
            for (let index = this.message.length-200; index < this.message.length; index++) {
                if(this.message[index] && body.t == 1 && body.t == this.message[index].t && body.g == this.message[index].g ){
                    messages.push(this.message[index])
                }else if(this.message[index] && body.t == 2 && body.t == this.message[index].t && (body.cu == this.message[index].to || body.cu == this.message[index].by)){
                    messages.push(this.message[index])
                }else if(this.message[index] && body.t == 3 && body.t == this.message[index].t && body.g == this.message[index].g){
                    messages.push(this.message[index])
                }
            }
            for (let index = messages.length-20; index < messages.length; index++) {
                if(messages[index])
                    str = str+/*''+"-"+""+"-"+*/messages[index].m/*+"-"*/+"-"+messages[index].d+"-"+messages[index].by+"-"+/*messages[index].ton+"-"*/messages[index].byn+/*"-"+messages[index].t+*/"|";
            }
            return str;
        }

        /*GUILD*/
        addGuild(body){
            if(!this.guilds[body.n]){
                var guild = {};
                guild.n = body.n;//name
                guild.r = 0;//ressource
                guild.s = body.s;//score
                guild.t = body.t;//techno
                guild.ma = body.cu;//maitre de guild
                guild.idg = randomIntFromInterval(10,999999);
                guild.o = {};//officier de guild //peuvent inviter
                guild.u = {};//users
                guild.u[body.cu] = {};
                guild.u[body.cu].sr = body.cur;
                guild.u[body.cu].ss = body.cus;
                guild.u[body.cu].st = body.cut;
                guild.u[body.cu].sd = body.cud;
                guild.u[body.cu].stal = (Math.floor(body.cur/100000)+body.cus+body.cut+(body.cud*10));
                guild.u[body.cu].t = 'master';
                guild.u[body.cu].n = body.cun;
                guild.m = [];//message
                this.guilds[body.n] = guild;
                guild.cg = 1
                return guild;
            }
            return guild;
        }

        quitGuild(body){
            if(this.guilds[body.n] && body.cu && this.guilds[body.n].u[body.cu]){
                delete this.guilds[body.n].u[body.cu]
                var count = 0;
                for (var k in this.guilds[body.n].u) {
                    if (this.guilds[body.n].u.hasOwnProperty(k)) {
                    ++count;
                    }
                }
                if(count == 0){
                    delete this.guilds[body.n]
                }
            }
            var obj = {};
            obj.cg = 0;
            obj.n = undefined;
            obj.icu = undefined;
            return obj;
        }

        changeNameUserGuild(body){
            if(this.guilds[body.n] && body.cu && body.cunn && this.guilds[body.n].u[body.cu]){
                guild.u[body.cu].n = body.cun;
            }
            /*if(this.guilds[body.n] && body.cu && body.cunn && this.guilds[body.n].u[body.cu]){
                var oldUser = this.guilds[body.n].u[body.cu];
                this.guilds[body.n].u[body.cunn] = oldUser;
                delete this.guilds[body.n].u[body.cu];
            }*/
        }

        loadGuild(body){
            if(this.guilds[body.n] && body.n != ""){
                return this.guilds[body.n];
            }else{
                var obj = {};
                if(this.guilds){
                    for(var guild in this.guilds){
                        if(this.guilds[guild].u[body.cu]){
                            if(this.guilds[guild].u[body.cu].t == 'invited'){
                                obj.icu = this.guilds[guild].n;
                                return obj;
                            }else{
                                return obj;
                            }
                        }
                    };
                }
            }
        }

        addGuildRessource(body){
            if(this.guilds[body.n]){
                this.guilds[body.n].r += 1000000;
                return this.loadGuild(body);
            }
        }

        takeGuildRessource(body){
            var obj = {};
            if(this.guilds[body.n]){
                if ((this.guilds[body.n].u[body.cu].t == 'officier' || this.guilds[body.n].u[body.cu].t == 'master') && this.guilds[body.n].r >= 1000000 ){
                    this.guilds[body.n].r -= 1000000;
                    obj.rgain = 1;
                }
                return obj;//this.loadGuild(body);
            }
            return obj;
        }

        addScore(body){
            if(this.guilds[body.n]){
                this.guilds[body.n].s += body.s;
                return this.loadGuild(body);
            }
        }

        joinGuild(body){
            if(this.guilds[body.n] && body.cu && this.guilds[body.n].u[body.cu]){
                if (this.guilds[body.n].u[body.cu].t == 'invited'){
                    this.guilds[body.n].u[body.cu].n = body.cun;
                    this.guilds[body.n].u[body.cu].sr = body.r;
                    this.guilds[body.n].u[body.cu].ss = body.s;
                    this.guilds[body.n].u[body.cu].st = body.t;
                    this.guilds[body.n].u[body.cu].sd = body.d;
                    this.guilds[body.n].u[body.cu].stal = (Math.floor(body.r/100000)+body.s+body.t+(body.d*10));
                    this.guilds[body.n].u[body.cu].t = 'recruit';
                }
                return this.loadGuild(body);
            }
        }

        invitMember(body){
            if(this.guilds[body.n] && this.guilds[body.n].u[body.cu]){
                if (this.guilds[body.n].u[body.cu].t == 'officier' || this.guilds[body.n].u[body.cu].t == 'master' ){
                    this.guilds[body.n].u[body.cui] = {};
                    this.guilds[body.n].u[body.cui].t = 'invited';
                }
                return this.guilds[body.n];
            } 
        }

        kickMember(body){
            if(this.guilds[body.n] && this.guilds[body.n].u[body.cu] && this.guilds[body.n].u[body.cui]){
                if (this.guilds[body.n].u[body.cu].t == 'officier' || this.guilds[body.n].u[body.cu].t == 'master')
                    delete this.guilds[body.n].u[body.cui];
                return this.loadGuild(body);
            } 
        }

        upGradeMember(body){
            if(this.guilds[body.n] && this.guilds[body.n].u[body.cu] && this.guilds[body.n].u[body.cui]){
                if ((this.guilds[body.n].u[body.cu].t == 'officier' || this.guilds[body.n].u[body.cu].t == 'master') && this.guilds[body.n].u[body.cui].t == 'master')
                    this.guilds[body.n].u[body.cui].t = 'officier';
                return this.loadGuild(body);
            } 
        }

        downGradeMember(body){
            if(this.guilds[body.n] && this.guilds[body.n].u[body.cu] && this.guilds[body.n].u[body.cui]){
                if (this.guilds[body.n].u[body.cu].t == 'officier' || this.guilds[body.n].u[body.cu].t == 'master')
                    this.guilds[body.n].u[body.cui].t = 'recruit';
                return this.loadGuild(body);
            } 
        }

        /*TRANSFER SHIP AND RESSOURCE*/
        transferShipToOther(body){
            //this.messageInfo[body.cu] = "your fleet of a "+this.sc2+this.sc3+this.sc4+this.sc5+this.sc6+this.sc7+" was sent to your planet [nameplanet:"+body.to+"] with "+body.r+"resources in its hold."
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
                transfer.byn = this.planets[body.id].on;
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
                transfer.time = Date.now()+(body.d*1000);//distance
                this.transferShip[JSON.stringify(body.cu)].push(transfer);
                return transfer;
            }
        }

        checkTransferShip(idUser){
            if(this.transferShip[idUser]){
                this.transferShip[idUser] = this.transferShip[idUser].filter(function (el) {
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
                                this.planets[this.transferShip[idUser][index].to].r += this.transferShip[idUser][index].r;
                                this.aopsc1 = this.transferShip[idUser][index].sc1;
                                this.aopsc2 = this.transferShip[idUser][index].sc2;
                                this.aopsc3 = this.transferShip[idUser][index].sc3;
                                this.aopsc4 = this.transferShip[idUser][index].sc4;
                                this.aopsc5 = this.transferShip[idUser][index].sc5;
                                this.aopsc6 = this.transferShip[idUser][index].sc6;
                                this.aopsc7 = this.transferShip[idUser][index].sc7;
                                var strs2 = "";var strs3 = "";var strs4 = "";var strs5 = "";var strs6 = "";var strs7 = "";
                                if(this.aopsc2 > 0) strs2 = " "+this.aopsc2+" Eagle,";
                                if(this.aopsc3 > 0) strs3 = " "+this.aopsc3+" Terhen,";
                                if(this.aopsc4 > 0) strs4 = " "+this.aopsc4+" Baltyor,";
                                if(this.aopsc5 > 0) strs5 = " "+this.aopsc5+" Emperor,";
                                if(this.aopsc6 > 0) strs6 = " "+this.aopsc6+" Crusader,";
                                if(this.aopsc7 > 0) strs7 = " "+this.aopsc7+" Imperator,";
                                this.planets[this.transferShip[idUser][index].to].setBio("Fleet trip","A fleet of"+this.transferShip[idUser][index].byn+" faction origin and composed of"+strs2+strs3+strs4+strs5+strs6+strs7+" and brings with it "+this.transferShip[idUser][index].r+" resources is arrived on your planet");
                                delete this.transferShip[idUser][index];
                            }else{
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
                var biosave = this.planets[body.id].bio;
                if(body.t0) this.planets[body.id].t0 = body.t0
                if(body.t2) this.planets[body.id].t2 = body.t2
                if(body.t3) this.planets[body.id].t3 = body.t3
                if(body.t4) this.planets[body.id].t4 = body.t4
                if(body.t5) this.planets[body.id].t5 = body.t5
                if(body.t6) this.planets[body.id].t6 = body.t6
                if(body.n){
                    if(body.cu == this.planets[body.id].o)
                        this.planets[body.id].on = body.n
                }
                this.actualizOne(body.id);
                this.planets[body.id].rattrapageShipTechDef();
                if(body.cu)
                    this.checkTransferShip(body.cu);
                this.planets[body.id].dba = Date.now()-this.planets[body.id].tba
                this.planets[body.id].u = [];
                var stringifiedPlanet = Object.assign(new Planet(), this.planets[body.id]);
                var gift = this.getPrimeOnPlanet(body);
                if(gift != undefined)
                    stringifiedPlanet.gift = gift;
                if(this.giftQuest.p[body.cu]){
                    stringifiedPlanet.giftQuest = 
                    delete this.giftQuest.p[body.cu];
                }
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
                stringifiedPlanet.questR = this.quest.r;
                stringifiedPlanet.questS = this.quest.s;
                stringifiedPlanet.questRmax = this.quest.rmax;
                stringifiedPlanet.questSmax = this.quest.smax;
                stringifiedPlanet.questId = this.quest.id;
                stringifiedPlanet.bio = {};
                this.planets[body.id].u = this;
                this.planets[body.id].bio = biosave;
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
                let data = JSON.stringify(this.transferShip);
                fs.writeFile('saveTransfer.json', data, (err) => {
                    if (err) throw err;
                    console.log('Data written to file');
                });
            } catch (err) {
                console.error(err);
            }
            try {
                let data = JSON.stringify(this.guilds);
                fs.writeFile('saveGuilds.json', data, (err) => {
                    if (err) throw err;
                    console.log('Data written to file');
                });
            } catch (err) {
                console.error(err);
            }
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
            fs.readFile('saveTransfer.json', (err, data) => {
                if (err) throw err;
                this.transferShip = JSON.parse(data);
            });
            fs.readFile('saveGuilds.json', (err, data) => {
                if (err) throw err;
                this.guilds = JSON.parse(data);
            });

            /*for (let index = 0; index <= 500; index++) {
                var fd = Date.now()+randomIntFromInterval(300000,1000000);
                var planet = new Planet(this,index,randomIntFromInterval(2,4),fd,fd+randomIntFromInterval(10000,90000),randomIntFromInterval(0,3),randomIntFromInterval(15,25),randomIntFromInterval(3,5),randomIntFromInterval(3,5),0,0,0,randomIntFromInterval(1,5),0,0,0,0,0,0,0,Date.now(),1,1,1,1,[],"");
                planet.generateAttackPnj();
                this.planets.push(planet);
            }
            this.Save();*/
            this.createQuest();
            //this.questCheck();
            setInterval(() => {
                this.Save();
            }, 26400000);
        }

        actualizOne(id){
            this.planets[id].checkFight(this);
        }

        actualizAll(){
            for (let index = 0; index < this.planets.length; index++) {
                this.planets[index].checkFight(this);
                this.planets[index].u = [];
            }
        }

        addUtoAll(){
            for (let index = 0; index < this.planets.length; index++) {
                this.planets[index].u = this;
            }
        }

        /*HTTP : 
        //creation des ship event galactic
            if http[? "ua"] = 1 {
                if !instance_exists(obj_deathStar){
                    with(instance_create(obj_deathStar)){
                        planetparent = 2
                    }
                }
                for (index = 0; index < 6; index++) {
                    if index = 0 {scnow = http[? "sc2"] }
                    if index = 1 {scnow = http[? "sc3"]}
                    if index = 2 {scnow = http[? "sc4"]}
                    if index = 3 {scnow = http[? "sc5"]}
                    if index = 4 {scnow = http[? "sc6"]}
                    if index = 5 {scnow = http[? "sc7"]}
                    global.typeEvent = index+2
                    for (index = 0; index < sc2.length; index++) {
                        with(instance_create(obj_ship)){
                            if (other.index = 0 && obj_highscore.http[? "soc"] = global.typeEvent)
                                enemy = global.idfixe 
                            noAttackPvp = 1;
                            type = global.typeEvent;
                            augmenter le temps de vol, 2 minute alarm
                            toutelesvariable;
                        }
                    }
                }
            }
            if !is_undefined(http[? "gift"]){
                ds_grid_add(obj_planetary.planetary,money,http[? "gift"])
                with(obj_deathStar){
                    explosion = 1;
                }
            }
            
            //Envoi quand ship owner destroy
            //Envoi quand -hp death star by ship owner
            */

        endEvent(){
            this.event.tba = Date.now()+(randomIntFromInterval(1640000,8600000));//time before attack
            this.event.tea = this.tba+(86400000/12);//2heure
            this.event.ua = 0;
        }

        startEvent(){
            if(Date.now() > this.event.tba && this.event.ua == 0){
                this.event.ua = 1;
                this.event.hp = 1000000000
            }
        }

        addEventParticipant(body){
            if(!this.event.p[body.cu]){
                var participant = {};
                participant.sc2 = body.sc2;
                participant.sc3 = body.sc3;
                participant.sc4 = body.sc4;
                participant.sc5 = body.sc5;
                participant.sc6 = body.sc6;
                participant.sc7 = body.sc7;
                participant.cu = body.cu;//global.idfixe
                participant.cun = body.cun;//global.name
                this.event.p[participant.cu] = participant;
                this.event.p = this.event.p.filter(function (el) { //suprimer empty element of array
                    return el != null || undefined; 
                }); 
            }
        }

        substractHpEvent(body){
            this.event.hp -= body.hp;
        }

        sendShipEvent(body){//envoi un ship de chaque participant
            if(this.event.ua == 0)
                this.startEvent();
            if(body.hp)
                this.substractHpEvent(body)
            var obj = {
                tsc2: 0,
                tsc3: 0,
                tsc4: 0,
                tsc5: 0,
                tsc6: 0,
                tsc7: 0,
            };
            if(this.event.hp <= 0 && this.event.p[body.cu]){
                this.endEvent();
                delete this.event.p[body.cu];
                this.event.p = this.event.p.filter(function (el) {
                    return el != null || undefined; 
                }); 
                obj.gift = 10000000;//explode death star side client
            }

            this.event.p.forEach(participant => {
                if(participant.sc2 > 0){obj.tsc2 += 1;var soc = 2;}else
                if(participant.sc3 > 0){obj.tsc3 += 1;var soc = 3;}else
                if(participant.sc4 > 0){obj.tsc4 += 1;var soc = 4;}else
                if(participant.sc5 > 0){obj.tsc5 += 1;var soc = 5;}else
                if(participant.sc6 > 0){obj.tsc6 += 1;var soc = 6;}else
                if(participant.sc7 > 0){obj.tsc7 += 1;var soc = 7;}
                if(body.cu = participant.cu)
                    obj.soc = soc;//coter client a la premiere catégorie soc créer, en faire enemy global.idfixe avec couleur differente et seul lui envoi c dgt hp et son destroy si destroy
            })
            return obj;
        }


        deleteShipEventParticipant(body){
            if(this.event.p[body.cu]){
                if(body.sc2 > 0)
                    if(this.event.p[body.cu].sc2 >= body.sc2){this.event.p[body.cu].sc2 -= body.sc2}else{this.event.p[body.cu].sc2 = 0}
                if(body.sc3 > 0)
                    if(this.event.p[body.cu].sc3 >= body.sc3){this.event.p[body.cu].sc3 -= body.sc3}else{this.event.p[body.cu].sc3 = 0}
                if(body.sc4 > 0)
                    if(this.event.p[body.cu].sc4 >= body.sc4){this.event.p[body.cu].sc4 -= body.sc4}else{this.event.p[body.cu].sc4 = 0}
                if(body.sc5 > 0)
                    if(this.event.p[body.cu].sc5 >= body.sc5){this.event.p[body.cu].sc5 -= body.sc5}else{this.event.p[body.cu].sc5 = 0}
                if(body.sc6 > 0)
                    if(this.event.p[body.cu].sc6 >= body.sc6){this.event.p[body.cu].sc6 -= body.sc6}else{this.event.p[body.cu].sc6 = 0}
                if(body.sc7 > 0)
                    if(this.event.p[body.cu].sc7 >= body.sc7){this.event.p[body.cu].sc7 -= body.sc7}else{this.event.p[body.cu].sc7 = 0}
                if(this.event.p[body.cu].sc2+this.event.p[body.cu].sc3+this.event.p[body.cu].sc4+this.event.p[body.cu].sc5+this.event.p[body.cu].sc6+this.event.p[body.cu].sc7 <= 0){
                    delete this.event.p[body.cu];
                    this.event.p = this.event.p.filter(function (el) { //suprimer empty element of array
                        return el != null || undefined; 
                    }); 
                }
            }
            return {};
        }



        addPrimeOnPlanet(body){
            this.planets[body.id].p += 1;
            this.planets[body.id].setBio("Hunting bounty","The planet received a million ressource hunting bounty");
            return this.loadById(body);
        }
    
        getPrimeOnPlanet(body){
            var gift;
            if(this.planets[body.id].p){
                gift = this.planets[body.id].p;
                this.planets[body.id].p = 0;
            }
            return gift;
        }


        createQuest(){
            this.quest.p = {};//participant
            this.quest.rmax = randomIntFromInterval(1000000,10000000);//ressourcemax
            this.quest.smax = randomIntFromInterval(100,10000);//shipmax 
            this.quest.r = 0;
            this.quest.s = 0;
            this.quest.tbe = Date.now()+3600000;//time before end//1 hour
            var newquest;
            for (let index = 0; index < 10; index++) {
                newquest = randomIntFromInterval(1,10);
                if(newquest != this.quest.id)
                    break;
            }
            this.quest.id = newquest;
            //console.log(this.quest);
        }

        questAddParticipation(body){
            if(this.planets[body.id]){
                this.planets[body.id].sc2 -= body.sc2;
                this.planets[body.id].sc3 -= body.sc3;
                this.planets[body.id].sc4 -= body.sc4;
                this.planets[body.id].sc5 -= body.sc5;
                this.planets[body.id].sc6 -= body.sc6;
                this.planets[body.id].sc7 -= body.sc7;
                this.planets[body.id].r -= body.r;
            }
            if(this.quest.p[body.cu] == undefined)
                this.quest.p[body.cu] = {};
            if(body.r != undefined) this.quest.p[body.cu].r += body.r;
            this.quest.p[body.cu].s += ((body.sc2*1)+(body.sc3*2)+(body.sc4*3)+(body.sc5*5)+(body.sc6*20)+(body.sc7*30));
            if(body.r != undefined) this.quest.r += body.r;
            this.quest.s += ((body.sc2*1)+(body.sc3*2)+(body.sc4*3)+(body.sc5*5)+(body.sc6*20)+(body.sc7*30));
            if(this.quest.r > this.quest.rmax)
                this.quest.r = this.quest.rmax;
            if(this.quest.s > this.quest.smax)
                this.quest.s = this.quest.smax;
            this.quest.p[body.cu].cu = body.cu;
            return this.getQuest(body);
        }

        questCheck(){
            if(Date.now() > this.quest.tbe)
                this.questEnd();
        }

        getQuest(body){
            var obj = {};
            obj.r = this.quest.r;
            obj.s = this.quest.s;
            obj.rmax = this.quest.rmax;
            obj.smax = this.quest.smax;
            obj.id = this.quest.id;
            obj.p = this.quest.p.length;
            obj.tbe = Math.floor((this.quest.tbe-Date.now())/60000);//minute restant
            obj.pr = 0;
            obj.ps = 0;
            if(this.quest.p[body.cu] != undefined){
                obj.pr = this.quest.p[body.cu].r;
                obj.ps = this.quest.p[body.cu].s;
            }
            return obj;
        }

        questEnd(){
            if(this.quest.p){
                for (let index = 0; index < this.quest.p.length; index++) {
                    //this.giftQuest[this.quest.p[index].cu] = this.quest.p[index].r+(this.quest.p[index].s*1000);
                    this.questAddLoot(this.quest.p[index].cu);
                }
            }
            delete this.quest.p;
            if(Date.now() > this.quest.tbe+(3600000/4))//laisser la quete finish 1 quart d'h
                this.createQuest();
        }

        questAddLoot(cu){
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
            if(!this.loot[cu])
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

        questGetLoot(){
            var obj = {};
            if(this.loot[body.cu]){
                for (let index = 0; index < this.loot[body.cu].length; index++) {
                    if(index == body.idloot && this.loot[body.cu][index])
                        return this.loot[body.cu][body.idloot];
                }
            }
            return obj;
        }

        questEquipLoot(){
            var obj = {};
            if(this.loot[body.cu]){
                for (let index = 0; index < this.loot[body.cu].length; index++) {
                    if(index == body.idloot && this.loot[body.cu][index])
                        this.lootEquiped = this.loot[body.cu][body.idloot];
                }
            }
            return obj;
        }

        questDeleteLoot(){
            var obj = {};
            if(this.loot[body.cu]){
                for (let index = 0; index < this.loot[body.cu].length; index++) {
                    if(index == body.idloot && this.loot[body.cu][index]){
                        delete this.loot[body.cu][body.idloot];
                        return this.loot[body.cu][body.idloot];
                    }
                }
            }
            return obj;
        }

        listBioByPage(body){
            return this.planets[body.id].listBioByPage(body);;
        }

        getBio(body){
            return this.planets[body.id].getBio(body);
        }

        sendPostMine(body){
            if(!this.postMine[body.cu])
                this.postMine[body.cu] = {};
            this.postMine[body.cu].x = body.x;
            this.postMine[body.cu].y = body.y;
            this.postMine[body.cu].a = body.a;
            this.postMine[body.cu].cu = body.cu;
            this.postMine[body.cu].id = body.id;
            this.postMine[body.cu].n = body.n;
            this.postMine[body.cu].hp = body.hp;
            var obj = {};
            obj.x = '';
            obj.y = '';
            obj.a = '';
            obj.cu = '';
            obj.id = '';
            obj.n = '';
            obj.hp = '';
            this.postMine.forEach(element => {
                obj.x = obj.x+element.x+'|';
                obj.y = obj.y+element.y+'|';
                obj.a = obj.a+element.a+'|';
                obj.cu = obj.cu+element.cu+'|';
                obj.id = obj.id+element.id+'|';
                obj.n = obj.n+element.n+'|';
                obj.hp = obj.hp+element.hp+'|';
            });console.log(obj);
            return obj;
        }
    

    }

    module.exports = Universe;


