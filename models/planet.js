function randomIntFromInterval(min, max) { // min and max included 
    return Math.floor(Math.random() * (max - min + 1) + min);
  }
  
  module.exports =
class Planet{
    constructor(name,owner,timeBeginAttack,timeEndAttack,attackedBy,shipCat1,shipCat2,shipCat3,shipCat4,shipCat5,defenseLevel,tradeLevel,scienceLevel,colorRed,colorGreen,colorBlue) {
        this.n = name; //name
        this.o = owner; //owner
        this.tba = timeBeginAttack; //time before Attack
        this.tea = timeEndAttack; //time rest attack
        this.ab = attackedBy; //attack by
        this.sc1 = shipCat1; //ship category 1
        this.sc2 = shipCat2; //ship category 2
        this.sc3 = shipCat3; //ship category 3
        this.sc4 = shipCat4; //ship category 4
        this.sc5 = shipCat5; //ship category 5
        this.d = defenseLevel; //defense level
        this.t = tradeLevel; //trade level
        this.s = scienceLevel; //trade level
        this.cr1 = colorRed;
        this.cg1 = colorGreen;
        this.cb1 = colorBlue;
    }

    startAttack(){
    }

    endAttack(){
        this.tba = new Date()+randomIntFromInterval(300000,1000000)
        this.tea = this.tba+randomIntFromInterval(300000,500000)
    }

    prepareAttack(by,to,dateBeginAttack,dateEndAttack){
        
    }

    addShip(cat1,cat2,cat3,cat4,cat5){
        
    }

    deleteShip(cat1,cat2,cat3,cat4,cat5){
        
    }


}