var Planet = require('./planet.js');

function randomIntFromInterval(min, max) { // min and max included 
    return Math.floor(Math.random() * (max - min + 1) + min);
  }


    
    class Universe{

        constructor() {
            this.planets = [];
            this.generate();
        }

        loadById(id){
            this.actualizOne(id);
            this.planets[id].u = [];
            var stringifiedPlanet = Object.assign(new Planet, this.planets[id]);
            this.planets[id].u = this;
            return stringifiedPlanet;
        }

        loadAll(){
            this.actualizAll();
            return this.planets;
        }

        generate(){
            for (let index = 0; index <= 500; index++) {
                var fd = Date.now()+randomIntFromInterval(300000,1000000);
                var planet = new Planet(this,'name',0,fd,fd+randomIntFromInterval(10000,90000),randomIntFromInterval(0,3),randomIntFromInterval(1,5),randomIntFromInterval(1,5),randomIntFromInterval(1,5),0,0,0,randomIntFromInterval(1,5),1);
                planet.generateAttackPnj();
                this.planets.push(planet);
            }
        }

        actualizOne(id){
            this.planets[id].modeBlockus();
            this.planets[id].checkFight();
        }

        actualizAll(){
            for (let index = 0; index < this.planets.length; index++) {
                this.planets[index].modeBlockus();
                this.planets[index].checkFight();
                this.planets[index].u = [];
            }
        }

        addUtoAll(){
            for (let index = 0; index < this.planets.length; index++) {
                this.planets[index].u = this;
            }
        }

    }

    module.exports = Universe;


