var Attack = require('./attack.js');

function randomIntFromInterval(min, max) { // min and max included 
    return Math.floor(Math.random() * (max - min + 1) + min);
  }
  
  module.exports =
class Planet{
    constructor(universe,id,owner,timeBeginAttack,timeEndAttack,attackedBy,shipCat1,shipCat2,shipCat3,shipCat4,shipCat5,defenseLevel,tradeLevel,technoCombustion,technoLaser,technoMissile,technoBouclier,technoAlliage,shipCat6,shipCat7,lastView = 0) {
        this.id = id; //id de la planet
        this.o = owner; //owner
        this.a; //attack obj
        this.aby;
        //this.ato;
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
        //this.t = tradeLevel; //
        this.tc = technoCombustion; //
        this.tl = technoLaser; //
        this.tm = technoMissile; //
        this.tb = technoBouclier; //
        this.ta = technoAlliage; //
        this.u = universe;
        this.lsd = Date.now()+3600000;//last ship destroy
        this.cp = true;//connected player
        this.ua = 0;//under attack
        this.lv = lastView;//last view on P by player for date rattrap
    }

    endAttack(){console.log('end attack')
        this.tba = Date.now()+randomIntFromInterval(300000,1000000);
        this.tea = this.tba+randomIntFromInterval(300000,500000);
        this.ua = 0;
        this.generateAttackPnj();
    }

    prepareAttackClient(body){
        if(this.aby){
            if(this.aby < 6){console.log(body)
                this.tba = Date.now()+randomIntFromInterval(3000,5000);
                this.tea = this.tba+randomIntFromInterval(3000000,5000000);
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
                //this.a = new Attack(body.by,this.o,body.sc1,body.sc2,body.sc3,body.sc4,body.sc5,body.sc6,body.sc7,body.idP,this.id);
            }
        }else{
            console.log(body)
                this.tba = Date.now()+randomIntFromInterval(3000,5000);
                this.tea = this.tba+randomIntFromInterval(3000000,5000000);
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

    generateAttackPnj(){console.log('generate pnj')
        var randPnjFinal = 0;
        for (let index = 0; index < 15; index++) {
            var randPnj = randomIntFromInterval(1,3);
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
        //this.a = new Attack(randPnjFinal,this.o,randomIntFromInterval(0,this.sc1),randomIntFromInterval(1,this.sc2),randomIntFromInterval(1,this.sc3),randomIntFromInterval(0,this.sc4),randomIntFromInterval(0,this.sc5),randomIntFromInterval(0,this.sc6),randomIntFromInterval(0,this.sc7),this.id);
    }

    addShip(cat){
        if(cat == 1) this.sc1 += 1;
        if(cat == 2) this.sc2 += 1;
        if(cat == 3) this.sc3 += 1;
        if(cat == 4) this.sc4 += 1;
        if(cat == 5) this.sc5 += 1;
        if(cat == 6) this.sc6 += 1;
        if(cat == 7) this.sc7 += 1;
    }

    addTechnologie(cat){
        if(cat == 1) this.tc += 1;
        if(cat == 2) this.tl += 1;
        if(cat == 3) this.tm += 1;
        if(cat == 4) this.tb += 1;
        if(cat == 5) this.ta += 1;
    }

    addDefense(){
        this.d += 1;
    }

    removeDefense(){
        if(this.d > 0)
            this.d -= 1;
    }

    /*delete ship only on actual planet of client connected, send only by client owner planet*/
    deleteShip(cat,owner){
        if(owner == this.aby){console.log('atk ship destroy',cat)
            if(cat == 1) {
                this.asc1 -= 1;
                //this.u.planets[this.aidP].sc1 -= 1;
            }
            if(cat == 2) {
                this.asc2 -= 1;
                //this.u.planets[this.aidP].sc2 -= 1;
            }
            if(cat == 3) {
                this.asc3 -= 1;
                //this.u.planets[this.aidP].sc3 -= 1;
            }
            if(cat == 4) {
                this.asc4 -= 1;
                //this.u.planets[this.aidP].sc4 -= 1;
            }
            if(cat == 5) {
                this.asc5 -= 1;
                //this.u.planets[this.aidP].sc5 -= 1;
            }
            if(cat == 6) {
                this.asc6 -= 1;
                //this.u.planets[this.aidP].sc6 -= 1;
            }
            if(cat == 7) {
                this.asc7 -= 1;
                //this.u.planets[this.aidP].sc7 -= 1;
            }
            //this.ato = this.ato;
            if(this.asc1+this.asc2+this.asc3+this.asc4+this.asc5+this.asc6+this.asc7 <= 9)
                this.generateAttackPnj();
        }else{console.log('def ship destroy',cat)
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
        this.cp = true;
    }

    check(){
        if(this.sc1+this.sc2+this.sc3+this.sc4+this.sc5+this.sc6+this.sc7 <= 9)
            this.decolonize();
    }

    /*if player no send ship destroy mode blockus actived*/
    modeBlockus(){
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
    }

    checkFight(){
        if(Date.now() > this.tba && this.ua == 0 && Date.now() < this.tea){
            this.ua = 1;console.log('under attack',this.id)
        }else if(Date.now() > this.tba && this.ua == 1 && Date.now() > this.tea){
            //this.endAttack();
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
            this.tc = 1; //techno
            this.tl = 1; //techno
            this.tm = 1; //techno
            this.tb = 1; //techno
            this.ta = 1; //techno
            this.endAttack();
    }


};