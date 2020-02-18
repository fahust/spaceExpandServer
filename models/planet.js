module.exports =
class Planet{
    constructor(name,owner,timeBeforeAttack,timeRestAttack,attackedBy,shipCat1,shipCat2,shipCat3,shipCat4,shipCat5,defenseLevel,tradeLevel,scienceLevel,colorRed,colorGreen,colorBlue) {
        this.n = name; //name
        this.o = owner; //owner
        this.tba = timeBeforeAttack; //time before Attack
        this.tra = timeRestAttack; //time rest attack
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


}