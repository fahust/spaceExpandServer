var Planet = require('./planet.js');

function randomIntFromInterval(min, max) { // min and max included 
    return Math.floor(Math.random() * (max - min + 1) + min);
  }

module.exports =
    
    class Universe{

    constructor() {
        this.planets = [];
        this.generate();
    }

    loadById(id){
        if(this.planets[id])
            return this.planets[id];
    }

    generate(){
        for (let index = 0; index < 5000; index++) {
            this.planets.push(new Planet('name',0,randomIntFromInterval(10000,90000),randomIntFromInterval(10000,90000),randomIntFromInterval(0,3),randomIntFromInterval(1,5),randomIntFromInterval(1,5),randomIntFromInterval(1,5),0,0,0,randomIntFromInterval(1,5),1));
            
        }
    }
}

