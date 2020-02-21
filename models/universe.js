var Planet = require('./planet.js');
const fs = require('fs');


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

        loadSave(){
            /*fs.readFile('../student.json', (err, data) => {
                if (err) throw err;
                let student = JSON.parse(data);
                console.log(student);
            });*/

            /*try {
                this.actualizAll();
                let data = JSON.stringify(this.planets);
                fs.writeFile('save.json', data, (err) => {
                    if (err) throw err;
                    console.log('Data written to file');
                    this.addUtoAll();
                });
            } catch (err) {
                console.error(err);
            }*/
        }

        generate(){
            fs.readFile('save.json', (err, data) => {
                if (err) throw err;
                let planets = JSON.parse(data);
                for (let index = 0; index < planets.length; index++) {
                    this.planets.push(Object.assign(new Planet(this), planets[index]));
                }
                console.log(this.planets);
            });
            /*for (let index = 0; index <= 500; index++) {
                this.planets.push(new Planet(this,index,randomIntFromInterval(1,3),randomIntFromInterval(10000,90000),randomIntFromInterval(10000,90000),randomIntFromInterval(0,3),randomIntFromInterval(3,5),randomIntFromInterval(1,5),randomIntFromInterval(1,5),0,0,0,randomIntFromInterval(1,5),0,0,0,0,0,0,0));
            }*/
            this.loadSave();
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


