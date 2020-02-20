var Attack = require('./attack.js');

function randomIntFromInterval(min, max) { // min and max included 
    return Math.floor(Math.random() * (max - min + 1) + min);
  }
  
  module.exports =
class Planet{
    constructor(universe,name,owner,timeBeginAttack,timeEndAttack,attack,shipCat1,shipCat2,shipCat3,shipCat4,shipCat5,defenseLevel,tradeLevel,scienceLevel,colorRed,colorGreen,colorBlue) {
        this.n = name; //name
        this.o = owner; //owner
        this.a; //attack obj
        this.tba = timeBeginAttack; //time begin Attack
        this.tea = timeEndAttack; //time end attack
        this.sc1 = shipCat1; //ship category 1
        this.sc2 = shipCat2; //ship category 2
        this.sc3 = shipCat3; //ship category 3
        this.sc4 = shipCat4; //ship category 4
        this.sc5 = shipCat5; //ship category 5
        this.d = defenseLevel; //defense level
        this.t = tradeLevel; //trade level
        this.s = scienceLevel; //trade level
        this.u = universe;
        this.lsd = Date.now();//last ship destroy
        this.cp = true;//connected player
        this.ua = false;//under attack
    }

    endAttack(){
        this.tba = Date.now()+randomIntFromInterval(300000,1000000);
        this.tea = this.tba+randomIntFromInterval(300000,500000);
        this.ua = false;
        this.generateAttackPnj();
    }

    prepareAttackClient(req){
        if(this.a.by <= 3){
            this.a = new Attack(req.body.by,this.id,req.body.sc1,req.body.sc2,req.body.sc3,req.body.sc4,req.body.sc5);
        }
    }

    generateAttackPnj(){
        this.a = new Attack(randomIntFromInterval(1,3),this.name,randomIntFromInterval(0,this.sc1),randomIntFromInterval(1,this.sc2),randomIntFromInterval(1,this.sc3),randomIntFromInterval(0,this.sc4),randomIntFromInterval(0,this.sc5));
    }

    addShip(cat){
        if(cat == 1) this.sc1 += 1;
        if(cat == 2) this.sc2 += 1;
        if(cat == 3) this.sc3 += 1;
        if(cat == 4) this.sc4 += 1;
        if(cat == 5) this.sc5 += 1;
    }

    /*delete ship only on actual planet of client connected*/
    deleteShip(cat,owner){
        if(owner == attack.by){
            if(cat == 1) attack.sc1 -= 1;
            if(cat == 2) attack.sc2 -= 1;
            if(cat == 3) attack.sc3 -= 1;
            if(cat == 4) attack.sc4 -= 1;
            if(cat == 5) attack.sc5 -= 1;
            endAttack = this.a.check();
            if(endAttack == true)
                this.generateAttackPnj();
        }else{
            if(cat == 1) this.sc1 -= 1;
            if(cat == 2) this.sc2 -= 1;
            if(cat == 3) this.sc3 -= 1;
            if(cat == 4) this.sc4 -= 1;
            if(cat == 5) this.sc5 -= 1;
            this.check();
            this.lsd = Date.now();
            this.cp = true;
        }
    }

    check(){
        if(this.sc1+this.sc2+this.sc3+this.sc4+this.sc5 <= 9)
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
            this.sc1 = 5; 
            this.sc2 = 3; 
            this.sc3 = 2; 
            this.sc4 = 0; 
            this.sc5 = 0; 
            this.endAttack();
        }
    }


};