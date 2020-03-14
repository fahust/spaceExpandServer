
"use strict";

function randomIntFromInterval(min, max) { // min and max included 
    return Math.floor(Math.random() * (max - min + 1) + min);
  }
  
  module.exports =
class Planet{
    constructor(universe,id,owner,timeBeginAttack,timeEndAttack,attackedBy,shipCat1,shipCat2,shipCat3,shipCat4,shipCat5,defenseLevel,ressource,technologie,technoLaser,technoMissile,technoBouclier,technoAlliage,shipCat6,shipCat7,lastView = Date.now(),rc = 1,rx = 1,rd = 1,p = 0) {
        this.id = id; //id de la planet
        this.o = owner; //owner
        this.on; //ownername
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
        this.lsd = Date.now()+3600000;//last ship destroy
        //this.cp = true;//connected player
        this.ua;//under attack
        this.lv = lastView;//last view on P by player for date rattrap
        this.ss;//Jauge Ship
        this.st;//Jauge Tech
        this.sd;//Jauge Defense
        this.g;//guild
        this.rc = rc;//reputation cehenyth
        this.rx = rx;//reputation xahor
        this.rd = rd;//reputation dominion
        this.p = p;//prime
        //this.dba;
    }

    trade(){
        if(this.r){//console.log('rattrapage money',(((this.sc1*1)+(this.sc1*2)+(this.sc1*3)+(this.sc1*5)+(this.sc1*10)+(this.sc1*50)+(this.sc1*100))*(Date.now()-this.lv))/10000);
            this.r += Math.floor((((this.sc1*1)+(this.sc2*1.5)+(this.sc3*2)+(this.sc4*3)+(this.sc5*4)+(this.sc6*5)+(this.sc7*10))*(Date.now()-this.lv))/1000);
        }else{
            this.r = 0;
        }
    }

    rattrapageShipTechDef(){
        var loopBuilt = Math.floor((Date.now()-this.lv)/5000);
        if(loopBuilt > 1){
            if(this.ss >= 10 && this.ss < 20) {
                for (let index = 0; index < loopBuilt; index++) 
                    this.addShip(1);
            }else if(this.ss >= 20 && this.ss < 40) {
                for (let index = 0; index < loopBuilt; index++) 
                    this.addShip(2);
            }else if(this.ss >= 40 && this.ss < 60) {
                for (let index = 0; index < loopBuilt; index++) 
                    this.addShip(3);
            }else if(this.ss >= 60 && this.ss < 70) {
                for (let index = 0; index < loopBuilt; index++) 
                    this.addShip(4);
            }else if(this.ss >= 70 && this.ss < 80) {
                for (let index = 0; index < loopBuilt; index++) 
                    this.addShip(5);
            }else if(this.ss >= 80 && this.ss < 90) {
                for (let index = 0; index < loopBuilt; index++) 
                    this.addShip(6);
            }else if(this.ss >= 90) {
                for (let index = 0; index < loopBuilt; index++) 
                    this.addShip(7);
            }

            if(this.st > 10)
                this.addTechnologie(this.st);

            if(this.sd > 10)
                this.addDefense(this.sd);

            this.lv = Date.now();
        }
    }

    prepareAttackClient(body){
        if(this.aby){
            if(this.aby < 6){
                this.tba = Date.now()+(body.d*1000);
                this.tea = this.tba+86400000;
                this.aby = body.by;
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
        }else{
                this.tba = Date.now()+(body.d*1000);
                this.tea = this.tba+86400000;
                this.aby = body.by;
                this.asc1 = body.sc1;
                this.asc2 = body.sc2;
                this.asc3 = body.sc3;
                this.asc4 = body.sc4;
                this.asc5 = body.sc5;
                this.asc6 = body.sc6;
                this.asc7 = body.sc7;
                this.aid = body.id;
                this.aidP = body.idp;
        }
    }

    generateAttackPnj(){
        var randPnjFinal = 0;
        for (let index = 0; index < 15; index++) {
            var randPnj = randomIntFromInterval(2,4);
            if(randPnj != this.o)
                randPnjFinal = randPnj;
        }
        this.aby = randPnjFinal;
        if(this.o < 7){
            this.asc1 = randomIntFromInterval(this.sc1,this.sc1*2);
            this.asc2 = randomIntFromInterval(this.sc2,this.sc2*2);
            this.asc3 = randomIntFromInterval(this.sc3,this.sc3*2);
            this.asc4 = randomIntFromInterval(this.sc4,this.sc4*2);
            this.asc5 = randomIntFromInterval(this.sc5,this.sc5*2);
            this.asc6 = randomIntFromInterval(this.sc6,this.sc6*2);
            this.asc7 = randomIntFromInterval(this.sc7,this.sc7*2);
        }else{
            this.asc1 = randomIntFromInterval(1,this.sc1);
            this.asc2 = randomIntFromInterval(1,this.sc2);
            this.asc3 = randomIntFromInterval(1,this.sc3);
            this.asc4 = randomIntFromInterval(0,this.sc4);
            this.asc5 = randomIntFromInterval(0,this.sc5);
            this.asc6 = randomIntFromInterval(0,this.sc6);
            this.asc7 = randomIntFromInterval(0,this.sc7);
        }
        this.aid = this.o;
        this.aidP = this.id;
        var timebonus = 1;
        if(randPnj == 2) timebonus = this.rd;
        if(randPnj == 3) timebonus = this.rx;
        if(randPnj == 4) timebonus = this.rc;
        this.tba = Date.now()+(randomIntFromInterval(1640000,8600000)*(1+(timebonus/5)));
        this.tea = this.tba+86400000 ;//1jour
        this.ua = 0;
    }

    addShipMultipleShip(body){
        for (let index = 0; index < body.nbr; index++) {
            if(body.cat == 1 && this.r > 50000) {
                this.sc1 += 1;
                this.r -= 50000;
            }
            if(body.cat == 2 && this.r > 200000){ 
                this.sc2 += 1;
                this.r -= 200000;
            }
            if(body.cat == 3 && this.r > 450000){ 
                this.sc3 += 1;
                this.r -= 450000;
            }
            if(body.cat == 4 && this.r > 800000){ 
                this.sc4 += 1;
                this.r -= 800000;
            }
            if(body.cat == 5 && this.r > 1250000){ 
                this.sc5 += 1;
                this.r -= 1250000;
            }
            if(body.cat == 6 && this.r > 10800000){ 
                this.sc6 += 1;
                this.r -= 10800000;
            }
            if(body.cat == 7 && this.r > 17150000){ 
                this.sc7 += 1;
                this.r -= 17150000;
            }
        }
    }

    addShip(cat){
        if(cat == 1 && this.r > 50000) {
            this.sc1 += 1;
            this.r -= 50000;
        }
        if(cat == 2 && this.r > 200000){ 
            this.sc2 += 1;
            this.r -= 200000;
        }
        if(cat == 3 && this.r > 450000){ 
            this.sc3 += 1;
            this.r -= 450000;
        }
        if(cat == 4 && this.r > 800000){ 
            this.sc4 += 1;
            this.r -= 800000;
        }
        if(cat == 5 && this.r > 1250000){ 
            this.sc5 += 1;
            this.r -= 1250000;
        }
        if(cat == 6 && this.r > 10800000){ 
            this.sc6 += 1;
            this.r -= 10800000;
        }
        if(cat == 7 && this.r > 17150000){ 
            this.sc7 += 1;
            this.r -= 17150000;
        }
    }

    addTechnologie(stat){
        if(this.r > Math.floor(stat*10000)){
            this.t += (Math.floor(stat)/100);
            if(this.t <= 100){
                this.r -= Math.floor(stat*10000);
            }else{
                this.t = 100;
            }
        }
    }

    addDefense(stat){
        if(this.r > Math.floor(stat*10000)){
            this.d += (Math.floor(stat)/100);
            if(this.d <= 100){
                this.r -= Math.floor(stat*10000);
            }else{
                this.d = 100;
            }
        }
    }

    deleteDefense(){
        if(this.d > 5)
            this.d -= 5;
    }

    /*delete ship only on actual planet of client connected, send only by client owner planet*/
    deleteShip(cat,owner,id){
        var gift;
        if(owner == this.aby){
            if(cat == 1 && this.asc1 > 0){this.asc1 -= 1;}
            else if(cat == 2 && this.asc2 > 0){this.asc2 -= 1;}
            else if(cat == 3 && this.asc3 > 0){this.asc3 -= 1;}
            else if(cat == 4 && this.asc4 > 0){this.asc4 -= 1;}
            else if(cat == 5 && this.asc5 > 0){this.asc5 -= 1;}
            else if(cat == 6 && this.asc6 > 0){this.asc6 -= 1;}
            else if(cat == 7 && this.asc7 > 0){this.asc7 -= 1;}
            if(this.asc1+this.asc2+this.asc3+this.asc4+this.asc5+this.asc6+this.asc7 <= 9)
                this.generateAttackPnj();
        }else{
            if(cat == 1 && this.sc1 > 0){this.sc1 -= 1;}
            else if(cat == 2 && this.sc2 > 0){this.sc2 -= 1;}
            else if(cat == 3 && this.sc3 > 0){this.sc3 -= 1;}
            else if(cat == 4 && this.sc4 > 0){this.sc4 -= 1;}
            else if(cat == 5 && this.sc5 > 0){this.sc5 -= 1;}
            else if(cat == 6 && this.sc6 > 0){this.sc6 -= 1;}
            else if(cat == 7 && this.sc7 > 0){this.sc7 -= 1;}
            gift = this.check();
        }
        this.lsd = Date.now();
        var obj = {};
        /*if(cat == 1)obj.sc1 = this.sc1;
        if(cat == 2) obj.sc2 = this.sc2;
        if(cat == 3) obj.sc3 = this.sc3;
        if(cat == 4) obj.sc4 = this.sc4;
        if(cat == 5) obj.sc5 = this.sc5;
        if(cat == 6) obj.sc6 = this.sc6;
        if(cat == 7) obj.sc7 = this.sc7;*/
        if(gift != undefined)
            obj.giftuser = gift;
        obj.id = id;
        return obj;
    }

    check(){
        if(this.sc1+this.sc2+this.sc3+this.sc4+this.sc5+this.sc6+this.sc7 <= 9){
            var gift = {
                by : this.aby,
                p : this.p,
            }
            this.decolonize();
            if(this.gift.aby > 7)
                return gift;
        }
        return undefined;
    }

    checkFight(){
        /*if(this.sc1 < 0) this.sc1 = 0;
        if(this.sc2 < 0) this.sc2 = 0;
        if(this.sc3 < 0) this.sc3 = 0;
        if(this.sc4 < 0) this.sc4 = 0;
        if(this.sc5 < 0) this.sc5 = 0;
        if(this.sc6 < 0) this.sc6 = 0;
        if(this.sc7 < 0) this.sc7 = 0;*/
        if(Date.now() > this.tba && this.ua == 0 && Date.now() < this.tea){
            this.ua = 1;
        }else if(Date.now() > this.tba && this.ua == 1 && Date.now() > this.tea && this.aby > 7){
            this.decolonize();
        }
    }

    decolonize(){
            this.o = this.aby;
            this.sc1 = this.asc1+10; 
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