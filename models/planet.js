var Attack = require('./attack.js');

function randomIntFromInterval(min, max) { // min and max included 
    return Math.floor(Math.random() * (max - min + 1) + min);
  }
  
  module.exports =
class Planet{
    constructor(universe,id,owner,timeBeginAttack,timeEndAttack,attackedBy,shipCat1,shipCat2,shipCat3,shipCat4,shipCat5,defenseLevel,tradeLevel,technoCombustion,technoLaser,technoMissile,technoBouclier,technoAlliage,shipCat6,shipCat7,lastView = 0) {
        this.id = id; //name
        this.o = owner; //owner
        this.a; //attack obj
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
        this.lsd = Date.now();//last ship destroy
        this.cp = true;//connected player
        this.ua = false;//under attack
        this.lv = lastView;//last view on P by player for date rattrap
    }

    endAttack(){
        this.tba = Date.now()+randomIntFromInterval(300000,1000000);
        this.tea = this.tba+randomIntFromInterval(300000,500000);
        this.ua = false;
        this.generateAttackPnj();
    }

    prepareAttackClient(body){
        if(this.a){
            if(this.a.by <= 3)
                this.a = new Attack(body.by,this.o,body.sc1,body.sc2,body.sc3,body.sc4,body.sc5,body.sc6,body.sc7,body.idP);
        }else{
            this.a = new Attack(body.by,this.o,body.sc1,body.sc2,body.sc3,body.sc4,body.sc5,body.sc6,body.sc7,body.idP);

        }
    }

    generateAttackPnj(){
        var randPnjFinal = 0;
        for (let index = 0; index < 15; index++) {
            randPnj = randomIntFromInterval(1,3);
            if(randPnj != this.o)
                randPnjFinal = randPnj;
        }
        this.a = new Attack(randPnjFinal,this.o,randomIntFromInterval(0,this.sc1),randomIntFromInterval(1,this.sc2),randomIntFromInterval(1,this.sc3),randomIntFromInterval(0,this.sc4),randomIntFromInterval(0,this.sc5),randomIntFromInterval(0,this.sc6),randomIntFromInterval(0,this.sc7));
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
        if(owner == this.a.by){
            if(cat == 1) {
                this.a.sc1 -= 1;
                this.u.planets[this.a.idP].sc1 -= 1;
            }
            if(cat == 2) {
                this.a.sc2 -= 1;
                this.u.planets[this.a.idP].sc2 -= 1;
            }
            if(cat == 3) {
                this.a.sc3 -= 1;
                this.u.planets[this.a.idP].sc3 -= 1;
            }
            if(cat == 4) {
                this.a.sc4 -= 1;
                this.u.planets[this.a.idP].sc4 -= 1;
            }
            if(cat == 5) {
                this.a.sc5 -= 1;
                this.u.planets[this.a.idP].sc5 -= 1;
            }
            if(cat == 6) {
                this.a.sc6 -= 1;
                this.u.planets[this.a.idP].sc6 -= 1;
            }
            if(cat == 7) {
                this.a.sc7 -= 1;
                this.u.planets[this.a.idP].sc7 -= 1;
            }
            endAttack = this.a.check();
            if(endAttack == true)
                this.generateAttackPnj();
        }else{
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
        if(this.lsd+10000 < dateNow && this.cp == true && this.a.by > 3 ){
            this.cp = false;
        }
        if(this.cp == false && this.lsd+3600000 < dateNow && this.a.by > 3 ){
            this.decolonize();
        }
    }

    checkFight(){
        if(Date.now() > this.tba && this.ua == false && Date.now() < this.tea){
            this.ua = true;
        }else if(Date.now() > this.tba && this.ua == true && Date.now() > this.tea){
            this.endAttack();
        }
    }

    decolonize(){
        if(this.a){
            this.o = this.a.by;
            this.sc1 = 6; 
            this.sc2 = 4; 
            this.sc3 = 3; 
            this.sc4 = 0; 
            this.sc5 = 0; 
            this.sc6 = 0; 
            this.sc7 = 0; 
            this.d = 0; //defense level
            this.tc = 0; //techno
            this.tl = 0; //techno
            this.tm = 0; //techno
            this.tb = 0; //techno
            this.ta = 0; //techno
            this.endAttack();
        }
    }


};