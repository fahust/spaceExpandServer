module.exports =
class Attack{
    constructor(attackBy,attackTo,shipCat1,shipCat2,shipCat3,shipCat4,shipCat5) {
        this.by = attackBy;
        this.to = attackTo;
        this.sc1 = shipCat1;
        this.sc2 = shipCat2;
        this.sc3 = shipCat3;
        this.sc4 = shipCat4;
        this.sc5 = shipCat5;
        this.toC = 0; //attackToConnected
    }

    check(){
        if(this.sc1+this.sc2+this.sc3+this.sc4+this.sc5 <= 9)
            return true;
        return false;
    }

};