
"use strict";

function randomIntFromInterval(min, max) { // min and max included 
    return Math.floor(Math.random() * (max - min + 1) + min);
  }
  
  module.exports =
class Planet{
    constructor(universe,id,owner,timeBeginAttack,timeEndAttack,attackedBy,shipCat1,shipCat2,shipCat3,shipCat4,shipCat5,defenseLevel,ressource,technologie,technoLaser,technoMissile,technoBouclier,technoAlliage,shipCat6,shipCat7,lastView = Date.now()) {
        this.id = id; //id de la planet
        this.o = owner; //owner
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
        this.u = universe;
        this.lsd = Date.now()+3600000;//last ship destroy
        //this.cp = true;//connected player
        this.ua = 0;//under attack
        this.lv = lastView;//last view on P by player for date rattrap
        this.ss;//Jauge Ship
        this.st;//Jauge Tech
        this.sd;//Jauge Defense
        //this.g = guild;//guild
        //this.dba;
    }

    endAttack(){console.log('end attack');
        this.tba = Date.now()+randomIntFromInterval(300000,1000000);
        this.tea = this.tba+randomIntFromInterval(30000000,50000000);
        this.ua = 0;
        this.generateAttackPnj();
    }

    trade(){
        if(this.r){//console.log('rattrapage money',(((this.sc1*1)+(this.sc1*2)+(this.sc1*3)+(this.sc1*5)+(this.sc1*10)+(this.sc1*50)+(this.sc1*100))*(Date.now()-this.lv))/10000);
            this.r += Math.floor((((this.sc1*1)+(this.sc2*2)+(this.sc3*3)+(this.sc4*5)+(this.sc5*10)+(this.sc6*50)+(this.sc7*100))*(Date.now()-this.lv))/100);
        }else{
            this.r = 0;
        }
    }

    rattrapageShipTechDef(){//console.log(Math.floor((Date.now()-this.lv)/5000));
        if(Math.floor((Date.now()-this.lv)/5000) >= 1) {this.lv = Date.now()}
        if(this.ss >= 10 && this.ss < 20) {
            for (let index = 0; index < Math.floor((Date.now()-this.lv)/5000); index++) {
                this.addShip(1);
            }
        }
        if(this.ss >= 20 && this.ss < 40) {
            for (let index = 0; index < Math.floor((Date.now()-this.lv)/5000); index++) {
                this.addShip(2);
            }
        }
        if(this.ss >= 40 && this.ss < 60) {
            for (let index = 0; index < Math.floor((Date.now()-this.lv)/5000); index++) {
                this.addShip(3);
            }
        }
        if(this.ss >= 60 && this.ss < 70) {
            for (let index = 0; index < Math.floor((Date.now()-this.lv)/5000); index++) {
                this.addShip(4);
            }
        }
        if(this.ss >= 70 && this.ss < 80) {
            for (let index = 0; index < Math.floor((Date.now()-this.lv)/5000); index++) {
                this.addShip(5);
            }
        }
        if(this.ss >= 80 && this.ss < 90) {
            for (let index = 0; index < Math.floor((Date.now()-this.lv)/1000000); index++) {
                this.addShip(6);
            }
        }
        if(this.ss >= 90) {
            for (let index = 0; index < Math.floor((Date.now()-this.lv)/1000000); index++) {
                this.addShip(7);
            }
        }

        if(this.st > 10){
            this.addTechnologie(this.st);
        }

        if(this.sd > 10){
            this.addDefense(this.sd);
        }
    }

    prepareAttackClient(body){
        if(this.aby){
            if(this.aby < 6){console.log(body);
                this.tba = Date.now()+(body.d*100);
                this.tea = this.tba+randomIntFromInterval(300000000,500000000);
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
        }else{
            console.log(body);
                this.tba = Date.now()+(body.d*100);
                this.tea = this.tba+randomIntFromInterval(300000000,500000000);
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

    generateAttackPnj(){//console.log('generate pnj');
        var randPnjFinal = 0;
        for (let index = 0; index < 15; index++) {
            var randPnj = randomIntFromInterval(2,4);
            if(randPnj != this.o)
                randPnjFinal = randPnj;
        }
        this.aby = randPnjFinal;
        this.asc1 = randomIntFromInterval(0,this.sc1);
        this.asc2 = randomIntFromInterval(0,this.sc2);
        this.asc3 = randomIntFromInterval(0,this.sc3);
        this.asc4 = randomIntFromInterval(0,this.sc4);
        this.asc5 = randomIntFromInterval(0,this.sc5);
        this.asc6 = randomIntFromInterval(0,this.sc6);
        this.asc7 = randomIntFromInterval(0,this.sc7);
        this.aid = this.o;
        this.aidP = this.id;
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
    deleteShip(cat,owner){
        if(owner == this.aby){console.log('atk ship destroy',cat)
            if(cat == 1) {
                this.asc1 -= 1;
            }
            if(cat == 2) {
                this.asc2 -= 1;
            }
            if(cat == 3) {
                this.asc3 -= 1;
            }
            if(cat == 4) {
                this.asc4 -= 1;
            }
            if(cat == 5) {
                this.asc5 -= 1;
            }
            if(cat == 6) {
                this.asc6 -= 1;
            }
            if(cat == 7) {
                this.asc7 -= 1;
            }
            if(this.asc1+this.asc2+this.asc3+this.asc4+this.asc5+this.asc6+this.asc7 <= 9)
                this.endAttack();
        }else{console.log('def ship destroy',cat);
            if(cat == 1) this.sc1 -= 1;
            if(cat == 2) this.sc2 -= 1;
            if(cat == 3) this.sc3 -= 1;
            if(cat == 4) this.sc4 -= 1;
            if(cat == 5) this.sc5 -= 1;
            if(cat == 6) this.sc6 -= 1;
            if(cat == 7) this.sc7 -= 1;
            
            this.check();
        }
        this.lsd = Date.now();
        //this.cp = true;
    }

    check(){
        if(this.sc1+this.sc2+this.sc3+this.sc4+this.sc5+this.sc6+this.sc7 <= 9)
            this.decolonize();
    }

    /*if player no send ship destroy mode blockus actived*/
    /*modeBlockus(){
        var dateNow = Date.now();
        if(this.aby){
            if(this.lsd+10000 < dateNow && this.cp == true && this.aby > 5 && this.o > 5 ){
                this.cp = false;
            }
            if(this.cp == false && this.lsd+3600000 < dateNow && this.aby > 5 && this.o > 5 ){
                this.decolonize();
            }
        }else{
            //this.generateAttackPnj();
        }
    }*/

    checkFight(){
        if(Date.now() > this.tba && this.ua == 0 && Date.now() < this.tea){
            this.ua = 1;//console.log('under attack',this.id)
        }else if(Date.now() > this.tba && this.ua == 1 && Date.now() > this.tea){
            this.endAttack();//console.log('time passed')
        }
    }

    decolonize(){console.log('decolonize');
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
            this.endAttack();
    }


};