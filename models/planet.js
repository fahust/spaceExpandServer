
"use strict";

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

module.exports =
    class Planet {
        constructor(universe, id, owner, timeBeginAttack, timeEndAttack, attackedBy, shipCat1, shipCat2, shipCat3, shipCat4, shipCat5, defenseLevel, ressource, technologie, technoLaser, technoMissile, technoBouclier, technoAlliage, shipCat6, shipCat7, lastView = Date.now(), rc = 1, rx = 1, rd = 1, p = 0, bio = [], abyn = "", build = []) {
            this.id = id; //id de la planet
            this.o = owner; //owner
            this.on; //ownername
            if (this.o == 4) this.on = "Cehenyth";
            if (this.o == 3) this.on = "Xahor";
            if (this.o == 2) this.on = "Dominion";
            this.a; //attack obj
            this.aby;
            this.asc1;
            this.asc2;
            this.asc3;
            this.asc4;
            this.asc5;
            this.asc6;
            this.asc7;
            this.aid;
            this.aidP;
            this.tba = timeBeginAttack; //time begin Attack
            this.tea = timeEndAttack; //time end attack
            this.sc1 = shipCat1; //ship category 1
            this.sc2 = shipCat2; //ship category 2
            this.sc3 = shipCat3; //ship category 3
            this.sc4 = shipCat4; //ship category 4
            this.sc5 = shipCat5; //ship category 5
            this.sc6 = shipCat6; //ship category 4
            this.sc7 = shipCat7; //ship category 5
            this.d = defenseLevel; //defense level
            this.r = ressource; //money
            this.t = technologie; //
            this.t0; //laser
            this.t2; //missile
            this.t3; //shield
            this.t4; //alloy
            this.t5; //plasma
            this.t6; //combustion
            this.at0; //laser atk
            this.at2; //missile atk
            this.at3; //shield atk
            this.at4; //alloy atk
            this.at5; //plasma atk
            this.at6; //combustion atk
            this.u = universe;
            this.lsd = Date.now() + 3600000;//last ship destroy
            //this.cp = true;//connected player
            this.ua = 0;//under attack
            this.lv = lastView;//last view on P by player for date rattrap
            this.ss;//Jauge Ship
            this.st;//Jauge Tech
            this.sd;//Jauge Defense
            this.g;//guild
            this.rc = rc;//reputation cehenyth
            this.rx = rx;//reputation xahor
            this.rd = rd;//reputation dominion
            this.p = p;//prime
            this.bio = bio;
            this.build = build;
            this.abyn = abyn;
            this.loot = [];
            //this.dba;
        }


        trade(politics) {
            if (this.r) {
                if (this.o < 7) {
                    var gainR = Math.floor((((this.sc1 * 1) + (this.sc2 * 1.5) + (this.sc3 * 2) + (this.sc4 * 3) + (this.sc5 * 4) + (this.sc6 * 5) + (this.sc7 * 10)) * (Date.now() - this.lv)) / 10000);
                    politics.f += -Math.floor(gainR-(gainR*((politics.tm/100)+1)));
                    /*console.log(gainR);
                    console.log('%',politics.tm);
                    console.log('soustrait',-Math.floor(gainR-(gainR*((politics.tm/100)+1))));*/
                    gainR = gainR+Math.floor(gainR-(gainR*((politics.tm/100)+1)));
                    //console.log(gainR);
                    if (gainR > 1) {
                        this.r += gainR;
                    } else {
                        gainR = 1;
                        this.r += gainR;
                    }
                } else {
                    var bonusLoot = 1;
                    for (let index = 0; index < this.loot.length; index++) {
                        if (this.loot[i].bonusRess > 1)
                            bonusLoot = this.loot[i].bonusRess;

                    }
                    var gainR = Math.floor(((((this.sc1 * 1) + (this.sc2 * 1.5) + (this.sc3 * 2) + (this.sc4 * 3) + (this.sc5 * 4) + (this.sc6 * 5) + (this.sc7 * 10)) * (Date.now() - this.lv)) / 2500) * bonusLoot);
                    politics.f += -Math.floor(gainR-(gainR*((politics.tm/100)+1)));
                    gainR = gainR+Math.floor(gainR-(gainR*((politics.tm/100)+1)));
                    this.r += gainR;
                }
            } else {
                gainR = 0;
                this.r = gainR;
            }
            return gainR;
        }

        rattrapageShipTechDef(politics) {
            var loopBuilt = Math.floor(((Date.now() - this.lv) / 5000)*((politics.vs/100)+1));
            var str = '';
            var strt = "";
            var strd = "";
            var nbr = 0;
            var tbm = 0;
            if (loopBuilt > 1) {
                if (this.r > 1000000) {
                    tbm = loopBuilt*politics.tbm;
                    politics.f += tbm;
                    this.r -= tbm;
                }
                var strr = this.trade(politics);
                //this.ss = 10;this.r = 5000000;politics.pt = 10//A SUPPRIMER
                if (this.ss >= 10 && this.ss < 20) {
                    nbr = 0;
                    for (let index = 0; index < loopBuilt; index++) {
                        if (this.r > 50000-Math.floor(50000*(politics.ps/100))) {
                            this.addShip(1,politics);
                            nbr += 1;
                        } else {
                            break;
                        }
                    }
                    str = str + nbr + ' Horus, ';
                } else if (this.ss >= 20 && this.ss < 40) {
                    nbr = 0;
                    for (let index = 0; index < loopBuilt; index++) {
                        if (this.r > 200000-Math.floor(200000*(politics.ps/100))) {
                            this.addShip(2,politics);
                            nbr += 1;
                        } else {
                            break;
                        }
                    }
                    str = str + nbr + ' Eagle, ';
                } else if (this.ss >= 40 && this.ss < 60) {
                    nbr = 0;
                    for (let index = 0; index < loopBuilt; index++) {
                        if (this.r > 450000-Math.floor(450000*(politics.ps/100))) {
                            this.addShip(3,politics);
                            nbr += 1;
                        } else {
                            break;
                        }
                    }
                    str = str + nbr + ' Terhen, ';
                } else if (this.ss >= 60 && this.ss < 70) {
                    nbr = 0;
                    for (let index = 0; index < loopBuilt; index++) {
                        if (this.r > 800000-Math.floor(800000*(politics.ps/100))) {
                            this.addShip(4,politics);
                            nbr += 1;
                        } else {
                            break;
                        }
                    }
                    str = str + nbr + ' Baltyor, ';
                } else if (this.ss >= 70 && this.ss < 80) {
                    nbr = 0;
                    for (let index = 0; index < loopBuilt; index++) {
                        if (this.r > 1250000-Math.floor(1250000*(politics.ps/100))) {
                            this.addShip(5,politics);
                            nbr += 1;
                        } else {
                            break;
                        }
                    }
                    str = str + nbr + ' Emperor, ';
                } else if (this.ss >= 80 && this.ss < 90) {
                    nbr = 0;
                    for (let index = 0; index < loopBuilt; index++) {
                        if (this.r > 10800000-Math.floor(10800000*(politics.ps/100))) {
                            this.addShip(6,politics);
                            nbr += 1;
                        } else {
                            break;
                        }
                    }
                    str = str + nbr + ' Crusader, ';
                } else if (this.ss >= 90) {
                    nbr = 0;
                    for (let index = 0; index < loopBuilt; index++) {
                        if (this.r > 17150000) {
                            this.addShip(7,politics);
                            nbr += 1;
                        } else {
                            break;
                        }
                    }
                    str = str + nbr + ' Imperator, ';
                }
                if (this.st > 10)
                    strt = this.addTechnologie(this.st,politics);
                if (this.sd > 10)
                    strd = this.addDefense(this.sd,politics);
                if (loopBuilt >= 100) {
                    strconstruct = "and he solves a construction of ";
                    if (str == "" && strd == "" && strt == "")
                        var strconstruct = "";
                    this.setBio("Building", "An intense production on this planet has been launched " + strconstruct + str + strd + strt + " with a gain of " + (strr - tbm) + " Ressource");
                }
                this.lv = Date.now();
            }
        }

        prepareAttackClient(body, universe) {//console.log(body.d,Date.now(),Date.now()+(body.d*1000));
            if (this.aby) {
                if (this.aby < 6) {
                    this.tba = Date.now() + (body.d * 1000);
                    this.tea = this.tba + 86400000;
                    this.aby = body.by;
                    this.abyn = body.n;
                    this.asc1 = body.sc1;
                    this.asc2 = body.sc2;
                    this.asc3 = body.sc3;
                    this.asc4 = body.sc4;
                    this.asc5 = body.sc5;
                    this.asc6 = body.sc6;
                    this.asc7 = body.sc7;
                    this.at0 = body.at0;
                    this.at2 = body.at2;
                    this.at3 = body.at3;
                    this.at4 = body.at4;
                    this.at5 = body.at5;
                    this.at6 = body.at6;
                    this.aid = body.id;
                    this.aidP = body.idp;
                }
            } else {
                this.tba = Date.now() + (body.d * 1000);
                this.tea = this.tba + 86400000;
                this.aby = body.by;
                this.abyn = body.n;
                this.asc1 = body.sc1;
                this.asc2 = body.sc2;
                this.asc3 = body.sc3;
                this.asc4 = body.sc4;
                this.asc5 = body.sc5;
                this.asc6 = body.sc6;
                this.asc7 = body.sc7;
                this.at0 = body.at0;
                this.at2 = body.at2;
                this.at3 = body.at3;
                this.at4 = body.at4;
                this.at5 = body.at5;
                this.at6 = body.at6;
                this.aid = body.id;
                this.aidP = body.idp;
            }
            this.ua = 0;
            //universe.messageInfo[body.by] = "your fleet of a "+this.asc2+this.asc3+this.asc4+this.asc5+this.asc6+this.asc7+" ships was sent to attack the planet [nameplanet:"+this.id+"]."
        }

        generateAttackPnj() {
            var randPnjFinal = 0;
            for (let index = 0; index < 15; index++) {
                var randPnj = randomIntFromInterval(2, 4);
                if (randPnj != this.o)
                    randPnjFinal = randPnj;
            }
            this.aby = randPnjFinal;
            if (this.abyn == 4) this.abyn = "Cehenyth";
            if (this.abyn == 3) this.abyn = "Xahor";
            if (this.abyn == 2) this.abyn = "Dominion";
            if (this.o < 7) {
                this.asc1 = randomIntFromInterval(this.sc1, this.sc1 * 2);
                this.asc2 = randomIntFromInterval(this.sc2, this.sc2 * 2);
                this.asc3 = randomIntFromInterval(this.sc3, this.sc3 * 2);
                this.asc4 = randomIntFromInterval(this.sc4, this.sc4 * 2);
                this.asc5 = randomIntFromInterval(this.sc5, this.sc5 * 2);
                this.asc6 = randomIntFromInterval(this.sc6, this.sc6 * 2);
                this.asc7 = randomIntFromInterval(this.sc7, this.sc7 * 2);
            } else {
                this.asc1 = randomIntFromInterval(1, this.sc1);
                this.asc2 = randomIntFromInterval(1, this.sc2);
                this.asc3 = randomIntFromInterval(1, this.sc3);
                this.asc4 = randomIntFromInterval(0, this.sc4);
                this.asc5 = randomIntFromInterval(0, this.sc5);
                this.asc6 = randomIntFromInterval(0, this.sc6);
                this.asc7 = randomIntFromInterval(0, this.sc7);
            }
            this.aid = this.o;
            this.aidP = this.id;
            var timebonus = 1;
            if (randPnj == 2) timebonus = this.rd;
            if (randPnj == 3) timebonus = this.rx;
            if (randPnj == 4) timebonus = this.rc;
            this.tba = Date.now() + (randomIntFromInterval(1640000, 8600000) * (1 + (timebonus / 5)));
            this.tea = this.tba + 86400000;//1jour
            this.ua = 0;
        }

        addShipMultipleShip(body) {
            for (let index = 0; index < body.nbr; index++) {
                if (body.cat == 1 && this.r > 50000) {
                    this.sc1 += 1;
                    this.r -= 50000;
                }
                if (body.cat == 2 && this.r > 200000) {
                    this.sc2 += 1;
                    this.r -= 200000;
                }
                if (body.cat == 3 && this.r > 450000) {
                    this.sc3 += 1;
                    this.r -= 450000;
                }
                if (body.cat == 4 && this.r > 800000) {
                    this.sc4 += 1;
                    this.r -= 800000;
                }
                if (body.cat == 5 && this.r > 1250000) {
                    this.sc5 += 1;
                    this.r -= 1250000;
                }
                if (body.cat == 6 && this.r > 10800000) {
                    this.sc6 += 1;
                    this.r -= 10800000;
                }
                if (body.cat == 7 && this.r > 17150000) {
                    this.sc7 += 1;
                    this.r -= 17150000;
                }
            }
        }

        addShip(cat,politics) {
            if (cat == 1 && this.r > 50000-Math.floor(50000*(politics.ps/100))) {
                this.sc1 += 1;
                this.r -= 50000-Math.floor(50000*(politics.ps/100));
                politics.f -= Math.floor(50000*(politics.ps/100));
            }
            if (cat == 2 && this.r > 200000-Math.floor(200000*(politics.ps/100))) {
                this.sc2 += 1;
                this.r -= 200000-Math.floor(200000*(politics.ps/100));
                politics.f -= Math.floor(200000*(politics.ps/100));
            }
            if (cat == 3 && this.r > 450000-Math.floor(450000*(politics.ps/100))) {
                this.sc3 += 1;
                this.r -= 450000-Math.floor(450000*(politics.ps/100));
                politics.f -= Math.floor(450000*(politics.ps/100));
            }
            if (cat == 4 && this.r > 800000-Math.floor(800000*(politics.ps/100))) {
                this.sc4 += 1;
                this.r -= 800000-Math.floor(800000*(politics.ps/100));
                politics.f -= Math.floor(800000*(politics.ps/100));
            }
            if (cat == 5 && this.r > 1250000-Math.floor(1250000*(politics.ps/100))) {
                this.sc5 += 1;
                this.r -= 1250000-Math.floor(1250000*(politics.ps/100));
                politics.f -= Math.floor(1250000*(politics.ps/100));
            }
            if (cat == 6 && this.r > 10800000-Math.floor(10800000*(politics.ps/100))) {
                this.sc6 += 1;
                this.r -= 10800000-Math.floor(10800000*(politics.ps/100));
                politics.f -= Math.floor(10800000*(politics.ps/100));
            }
            if (cat == 7 && this.r > 17150000-Math.floor(17150000*(politics.ps/100))) {
                this.sc7 += 1;
                this.r -= 17150000-Math.floor(17150000*(politics.ps/100));
                politics.f -= Math.floor(17150000*(politics.ps/100));
            }
        }

        addTechnologie(stat,politics) {
            if (this.r > Math.floor(stat * 10000)-Math.floor((stat * 10000)*(politics.pt/100))) {
                this.t += Math.floor((stat / 100)*((politics.vt/100)+1));
                if (this.t <= 100) {
                    this.r -= Math.floor(stat * 10000)-Math.floor((stat * 10000)*(politics.pt/100));
                    politics.f -= Math.floor((stat * 10000)*(politics.pt/100));
                    return "a " + Math.floor((stat / 100)*((politics.vt/100)+1)); + " % improvement in technology";
                } else {
                    this.t = 100;
                }
            }
            return "";
        }

        addDefense(stat,politics) {
            if (this.r > Math.floor(stat * 10000)-Math.floor((stat * 10000)*(politics.pd/100))) {
                this.d += Math.floor((stat / 100)*((politics.vd/100)+1));
                if (this.d <= 100) {
                    this.r -= Math.floor(stat * 10000)-Math.floor((stat * 10000)*(politics.pd/100));
                    politics.f -= Math.floor((stat * 10000)*(politics.pd/100));
                    return "a " + Math.floor((stat / 100)*((politics.vd/100)+1)); + " % improvement in defense";
                } else {
                    this.d = 100;
                }
            }
            return "";
        }

        deleteDefense() {
            if (this.d > 5)
                this.d -= 5;
        }

        /*delete ship only on actual planet of client connected, send only by client owner planet*/
        deleteShip(cat, owner, id, universe) {
            var gift;
            if (owner == this.aby) {
                if (cat == 1 && this.asc1 > 0) { this.asc1 -= 1; }
                else if (cat == 2 && this.asc2 > 0) { this.asc2 -= 1; }
                else if (cat == 3 && this.asc3 > 0) { this.asc3 -= 1; }
                else if (cat == 4 && this.asc4 > 0) { this.asc4 -= 1; }
                else if (cat == 5 && this.asc5 > 0) { this.asc5 -= 1; }
                else if (cat == 6 && this.asc6 > 0) { this.asc6 -= 1; }
                else if (cat == 7 && this.asc7 > 0) { this.asc7 -= 1; }
                if (this.asc1 + this.asc2 + this.asc3 + this.asc4 + this.asc5 + this.asc6 + this.asc7 <= 9) {
                    new Promise((resolve, reject) => {
                        this.setBio("Victory", "The fleet of the " + this.abyn + " faction was being pushed back by the " + this.on + "");
                        resolve('OK');
                    })//.then(OK => console.log('victory')).catch(err => console.log(err));
                    this.generateAttackPnj();
                }
            } else {
                if (cat == 1 && this.sc1 > 0) { this.sc1 -= 1; }
                else if (cat == 2 && this.sc2 > 0) { this.sc2 -= 1; }
                else if (cat == 3 && this.sc3 > 0) { this.sc3 -= 1; }
                else if (cat == 4 && this.sc4 > 0) { this.sc4 -= 1; }
                else if (cat == 5 && this.sc5 > 0) { this.sc5 -= 1; }
                else if (cat == 6 && this.sc6 > 0) { this.sc6 -= 1; }
                else if (cat == 7 && this.sc7 > 0) { this.sc7 -= 1; }
                gift = this.check(universe);
            }
            this.lsd = Date.now();
            var obj = {};
            if (gift != undefined)
                obj.giftuser = gift;
            obj.id = id;
            return obj;
        }

        check(universe) {
            if (this.sc1 + this.sc2 + this.sc3 + this.sc4 + this.sc5 + this.sc6 + this.sc7 <= 9) {
                var gift = {
                    by: this.aby,
                    p: this.p,
                }
                this.decolonize(universe);
                if (this.aby > 7)
                    return gift;
            }
            return undefined;
        }

        checkFight(universe) {
            if (Date.now() > this.tba && this.ua == 0 && Date.now() < this.tea) {
                var fleet = 0 + this.asc2 + this.asc3 + this.asc4 + this.asc5 + this.asc6 + this.asc7;
                if (this.aby == 4) this.abyn = "Cehenyth";
                if (this.aby == 3) this.abyn = "Xahor";
                if (this.aby == 2) this.abyn = "Dominion";
                this.setBio("Under attack", "A fleet of the " + this.abyn + " faction, composed of " + fleet + " ships attack this planet");
                this.ua = 1;
            } else if (Date.now() > this.tba && this.ua == 1 && Date.now() > this.tea && this.aby > 7) {
                this.decolonize(universe);
            }
        }

        listBioByPage(body) {
            if (body.page) {
                this.bio.reverse();
                var obj = {};
                var str = '';
                var page = 1;
                var nbrPage = Math.floor(this.bio.length / 10) + 1;
                //if(nbrPage < 1) nbrPage = 1;
                if (body.page > 1) { page = (body.page * 5) }
                for (let index = 0 + page - 1; index < page + 10; index++) {
                    if (this.bio[index]) str = str + this.bio[index].t + "|";
                }
                this.bio.reverse();
                obj.listbio = str;
                obj.nbrpage = nbrPage;
                return obj;
            }
        }

        getBio(body) {
            var obj = {};
            for (let index = 0; index < this.bio.length; index++) {
                if (body.bio == this.bio[index].t) {
                    obj.t = this.bio[index].t;
                    obj.d = this.bio[index].d;
                    obj.d1 = this.bio[index].d1;
                }
            }
            return obj;
        }

        setBio(t, d1) {
            var bio = {};
            var current_datetime = new Date();
            var formatted_date = current_datetime.getFullYear() + "/" + (current_datetime.getMonth() + 1) + "/" + current_datetime.getDate() + "  -  " + hours_with_leading_zeros(current_datetime) + ":" + minutes_with_leading_zeros(current_datetime) + ":" + secondes_with_leading_zeros(current_datetime);
            bio.t = this.bio.length + " - " + t;
            bio.d = formatted_date;
            bio.d1 = d1;
            this.bio.push(bio);
        }

        addBuildOrbit(body) {
            var obj = {};
            obj.dist = body.dist;
            obj.hp = body.hp;
            obj.dir = body.dir;
            obj.m = body.m;
            obj.i = body.i;
            this.r -= body.c;
            this.build.push(obj);
            return {};
        }

        getBuildOrbit() {
            var bo = '';
            for (let index = 0; index < this.build.length; index++) {//console.log()
                if (this.build[index])
                    bo = bo + this.build[index].dist + '|' + this.build[index].hp + '|' + this.build[index].dir + '|' + this.build[index].m + '|' + this.build[index].i + '#';
            }
            //console.log(bo)
            return bo;
        }

        deleteBuildOrbit(body) {
            for (let index = 0; index < this.build.length; index++) {
                if (this.build[index]) {
                    if (this.build[index].i == body.i) {
                        //console.log(this.build[index].i)
                        delete this.build[index];
                    }
                }
            }
            return {};
        }

        decolonize(universe) {
            this.setBio("Conquest", "The planet once owned by " + this.on + " was conquered and is now owned by " + this.abyn + " faction");
            //delete transfer ship to this planet if loosed
            if (universe.transferShip[this.o]) {
                for (let index = 0; index < universe.transferShip[this.o].length; index++) {
                    if (universe.transferShip[this.o][index]) {
                        if (universe.transferShip[this.o][index].to == this.id)
                            delete universe.transferShip[this.o][index];
                    }
                }
            }
            this.p = 0;
            this.o = this.aby;
            this.g = -1;
            this.build = [];
            if (this.o == 4) this.on = "Cehenyth";
            if (this.o == 3) this.on = "Xahor";
            if (this.o == 2) this.on = "Dominion";
            this.sc1 = this.asc1 + 10;
            this.sc2 = this.asc2;
            this.sc3 = this.asc3;
            this.sc4 = this.asc4;
            this.sc5 = this.asc5;
            this.sc6 = this.asc6;
            this.sc7 = this.asc7;
            this.d = 0; //defense level
            this.t = 1; //techno
            this.generateAttackPnj();
        }


    };