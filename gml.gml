#define scr_stepcomplete
//planet de depart
   //update_score(global.name,scoretotal,global.idfixe,scoreressvalid,scoreshipsvalid,scoresciencevalid,scoredefvalid,global.idguildname,global.idguild);//}

ttalshipdef = 1

/*if instance_exists(obj_defence){instance_activate_object(obj_defence);
with(obj_defence){if ds_grid_get(obj_planetary.planetary,51,planetparent) > 0  {
if ds_grid_get(obj_planetary.planetary,28,planetparent) = obj_planetary.systemstellairenow {}else{instance_deactivate_object(id);}}
}}*/

if global.shootaudio > 0 {global.shootaudio -= 1*(1+(global.shootaudio/20))}
//TURRET OBJ FAIS TROP RAMER OPTI
okzone[0] = 0
okzone[1] = 0
okzone[2] = 0
okzone[3] = 0
okzone[4] = 0
okzone[5] = 0
okzone[6] = 0
okzone[7] = 0
okzone[8] = 0
okzone[9] = 0
okzone[10] = 0
okzone[11] = 0
okzone[12] = 0
okzone[13] = 0
okzone[14] = 0
okzone[15] = 0
okzone[16] = 0
okzone[17] = 0
okzone[18] = 0
okzone[19] = 0
okzone[20] = 0
okzone[21] = 0

if ds_grid_get(planetary,204,planetnowid) > 0 {//HP PLANET
if instance_exists(obj_defence) {with(obj_defence){
if enemy = ds_grid_get(other.planetary,32,planetparent) && planetparent = other.planetnowid {
other.okzone[zone] = 1;}
}}

   if ds_grid_get(planetary,61,planetnowid) = 1 && okzone[1] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,17,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 0;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 1;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,62,planetnowid) = 1 && okzone[2] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,17,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 0;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 2;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,63,planetnowid) = 1 && okzone[3] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,17,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 0;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 3;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,64,planetnowid) = 1 && okzone[4] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,17,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 0;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 4;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,65,planetnowid) = 1 && okzone[5] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,17,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 0;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 5;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,66,planetnowid) = 1 && okzone[6] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,17,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 0;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 6;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,67,planetnowid) = 1 && okzone[7] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,17,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 0;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 7;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,68,planetnowid) = 1 && okzone[8] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,17,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 0;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 8;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,69,planetnowid) = 1 && okzone[9] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,17,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 0;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 9;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,70,planetnowid) = 1 && okzone[10] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,17,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 0;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 10;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   
   
   if ds_grid_get(planetary,280,planetnowid) = 1 && okzone[11] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,16,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 1;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 11;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,281,planetnowid) = 1 && okzone[12] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,16,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 1;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 12;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,282,planetnowid) = 1 && okzone[13] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,16,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 1;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 13;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,283,planetnowid) = 1 && okzone[14] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,16,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 1;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 14;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,284,planetnowid) = 1 && okzone[15] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,16,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 1;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 15;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,285,planetnowid) = 1 && okzone[16] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,16,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 1;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 16;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,286,planetnowid) = 1 && okzone[17] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,16,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 1;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 17;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,287,planetnowid) = 1 && okzone[18] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,16,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 1;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 18;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,288,planetnowid) = 1 && okzone[19] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,16,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 1;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 19;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,289,planetnowid) = 1 && okzone[20] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,16,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 1;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 20;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   
   }

   
   //TURRET OBJ 


if ds_grid_get(planetary,38,buildaffect) < 0 {ds_grid_set(planetary,38,buildaffect,0) }

if ds_grid_get(planetary,36,buildaffect) < 4 {ds_grid_set(planetary,36,buildaffect,2)
ds_grid_set(planetary,43,buildaffect,3)
ds_grid_set(planetary,44,buildaffect,2)
ds_grid_set(planetary,45,buildaffect,2)
ds_grid_set(planetary,46,buildaffect,0)
ds_grid_set(planetary,47,buildaffect,0)
}//jamais avoir vaisseau en dessous de 3 /2/2

if ds_grid_get(planetary,32,buildaffect) = 0 {
ds_grid_set(planetary,36,buildaffect,3)
ds_grid_set(planetary,43,buildaffect,1)
ds_grid_set(planetary,44,buildaffect,1)
ds_grid_set(planetary,45,buildaffect,1)
ds_grid_set(planetary,46,buildaffect,0)
ds_grid_set(planetary,47,buildaffect,0)
}//si pas de proprio ,pas de vaisseau sinon bug bataille 

if surface_exists(obj_planetary.surf){global.surfok = 1}else{global.surfok = 0}

idplanet[1] = -1
idplanet[2] = -1
idplanet[3] = -1
idplanet[4] = -1
if instance_exists(obj_ship){
nbrdobjship = instance_number(obj_ship)
with(obj_ship){if suislepatron = 1 {
if other.idplanet[1] = -1 {other.idplanet[1] = planetparent }else
if other.idplanet[2] = -1 {if other.idplanet[1] = planetparent{}else{other.idplanet[2] = planetparent }}else
if other.idplanet[3] = -1 {if other.idplanet[1] = planetparent or other.idplanet[2] = planetparent {}else{other.idplanet[3] = planetparent }}else
if other.idplanet[4] = -1 {if other.idplanet[1] = planetparent or other.idplanet[2] = planetparent or other.idplanet[3] = planetparent {}else{other.idplanet[4] = planetparent }}
}}
}




randomangleorbit1 += 0.1
randomangleorbit2 += 0.1
randomangleorbit3 += 0.1
randomangleorbit4 += 0.1
randomangleorbit5 += 0.1
randomangleorbit6 += 0.1
randomangleorbit7 += 0.1
randomangleorbit8 += 0.1
randomangleorbit9 += 0.1
randomangleorbit10 += 0.1



//BUILD DEBUILD ECT
statvar1build = 0
statvar2build = 0
statvar3build = 0
statvar4build = 0

ibuild = floor(random_range(100,172))

//buildaffect = floor(random_range(0,200))//affecter ce nombre d'astre (grid y) a augmenter
if buildaffect < ds_grid_height(planetary)-1 {
buildaffect += 1 }else{buildaffect = 0}
if buildaffect = lastbuildaffect {}else{
lastbuildaffect = buildaffect
if ds_grid_get(planetary,204,buildaffect) > 0 {//HP PLANET
if ds_grid_get(planetary,36,buildaffect) < 0 {ds_grid_set(planetary,36,buildaffect,0)}//jamais avoir vaisseauen dessous de 0


varressource = ds_grid_get(planetary,90,buildaffect)+
ds_grid_get(planetary,91,buildaffect)+
ds_grid_get(planetary,92,buildaffect)+
ds_grid_get(planetary,93,buildaffect)+
ds_grid_get(planetary,94,buildaffect)+
ds_grid_get(planetary,95,buildaffect)+
ds_grid_get(planetary,96,buildaffect)+
ds_grid_get(planetary,97,buildaffect)+
ds_grid_get(planetary,98,buildaffect)

ds_grid_set(planetary,35,buildaffect,floor(varressource))


//calculate defence

varressource = (ds_grid_get(planetary,61,buildaffect)*5)+
(ds_grid_get(planetary,62,buildaffect)*5)+
(ds_grid_get(planetary,63,buildaffect)*5)+
(ds_grid_get(planetary,64,buildaffect)*5)+
(ds_grid_get(planetary,65,buildaffect)*5)+
(ds_grid_get(planetary,66,buildaffect)*5)+
(ds_grid_get(planetary,67,buildaffect)*5)+
(ds_grid_get(planetary,68,buildaffect)*5)+
(ds_grid_get(planetary,69,buildaffect)*5)+
(ds_grid_get(planetary,70,buildaffect)*5)+
(ds_grid_get(planetary,280,buildaffect)*5)+
(ds_grid_get(planetary,281,buildaffect)*5)+
(ds_grid_get(planetary,282,buildaffect)*5)+
(ds_grid_get(planetary,283,buildaffect)*5)+
(ds_grid_get(planetary,284,buildaffect)*5)+
(ds_grid_get(planetary,285,buildaffect)*5)+
(ds_grid_get(planetary,286,buildaffect)*5)+
(ds_grid_get(planetary,287,buildaffect)*5)+
(ds_grid_get(planetary,288,buildaffect)*5)+
(ds_grid_get(planetary,289,buildaffect)*5)



ds_grid_set(planetary,38,buildaffect,floor(varressource))


//calculate shipinfight

varressource = (ds_grid_get(planetary,231,buildaffect))+
(ds_grid_get(planetary,232,buildaffect))+
(ds_grid_get(planetary,233,buildaffect))+
(ds_grid_get(planetary,234,buildaffect))+
(ds_grid_get(planetary,235,buildaffect))+
(ds_grid_get(planetary,236,buildaffect))+
(ds_grid_get(planetary,237,buildaffect))


ds_grid_set(planetary,52,buildaffect,floor(varressource))

//calculate SCIENCE
varscience = ds_grid_get(planetary,72,buildaffect)+
ds_grid_get(planetary,73,buildaffect)+
ds_grid_get(planetary,74,buildaffect)+
ds_grid_get(planetary,75,buildaffect)

ds_grid_set(planetary,37,buildaffect,varscience) 


//calculate vaisseau total
varship = ds_grid_get(planetary,43,buildaffect)+
ds_grid_get(planetary,44,buildaffect)+
ds_grid_get(planetary,45,buildaffect)+
ds_grid_get(planetary,46,buildaffect)+
ds_grid_get(planetary,47,buildaffect)+
ds_grid_get(planetary,48,buildaffect)+
ds_grid_get(planetary,49,buildaffect)


ds_grid_set(planetary,36,buildaffect,varship) 

varshipinflight = ds_grid_get(planetary,54,buildaffect)+
ds_grid_get(planetary,55,buildaffect)+
ds_grid_get(planetary,56,buildaffect)+
ds_grid_get(planetary,57,buildaffect)+
ds_grid_get(planetary,58,buildaffect)+
ds_grid_get(planetary,59,buildaffect)+
ds_grid_get(planetary,60,buildaffect)

ds_grid_set(planetary,53,buildaffect,varshipinflight)

//changer les var stat a chaque buildaffect pour planet enemy
if ds_grid_get(planetary,32,buildaffect) < 5 {
//modechoosestat = choose(81)
/*stat1 = floor(random_range(20,82));
stat2 = floor(random_range(0,100-stat1));
stat3 = floor(random_range(0,100-stat1-stat2));
stat4 = floor(random_range(0,100-stat1-stat2-stat3));
ds_grid_set(planetary,39,buildaffect,stat1)
ds_grid_set(planetary,40,buildaffect,stat2)
ds_grid_set(planetary,41,buildaffect,stat3)
ds_grid_set(planetary,42,buildaffect,stat4)*/
}


prcntchange1 = floor(random_range(ds_grid_get(planetary,39,buildaffect),100))
prcntchange2 = floor(random_range(ds_grid_get(planetary,40,buildaffect),100))
prcntchange3 = floor(random_range(ds_grid_get(planetary,41,buildaffect),100))
prcntchange4 = floor(random_range(ds_grid_get(planetary,42,buildaffect),100))

//pas depasser 100 avec scientifique et defense
if ds_grid_get(planetary,37,buildaffect) > 100 {ds_grid_set(planetary,37,buildaffect,100)}
if ds_grid_get(planetary,38,buildaffect) > 100 {ds_grid_set(planetary,38,buildaffect,100)}

if prcntchange1 >= 99 && ds_grid_get(planetary,39,buildaffect) > 5{ds_grid_set(planetary,ibuild,buildaffect,choose(0,1,2,3,4,5,6,7,8,9)) }//INDUSTRY = ville
if prcntchange2 >= 99 && ds_grid_get(planetary,40,buildaffect) > 5{ds_grid_set(planetary,ibuild,buildaffect,choose(0,1,2,3,4,5,6,7,8,9)) }//SHIPS = ville
if prcntchange3 >= 99 && ds_grid_get(planetary,41,buildaffect) > 5{ds_grid_set(planetary,ibuild,buildaffect,choose(0,1,2,3,4,5,6,7,8,9)) }//SCIENTIST = ville
if prcntchange4 >= 99 && ds_grid_get(planetary,42,buildaffect) > 5{ds_grid_set(planetary,ibuild,buildaffect,choose(0,1,2,3,4,5,6,7,8,9)) }//DEFENCE = ville

if ds_grid_get(planetary,39,buildaffect) < 5 && ds_grid_get(planetary,40,buildaffect) < 5 
&& ds_grid_get(planetary,41,buildaffect) < 5 && ds_grid_get(planetary,42,buildaffect) < 5 {
if ds_grid_get(planetary,5,buildaffect) = 1 {ds_grid_set(planetary,ibuild,buildaffect,floor(random_range(10,29)))}
else{ds_grid_set(planetary,ibuild,buildaffect,floor(random_range(20,29)))}
}
}




if buildaffect = 0 {//ds_grid_get(planetary,32,buildaffect) = global.idfixe {
ds_grid_add(planetary,258,buildaffect,1)
date = date_current_datetime()
//FAIRE LE RATTRAPAGE
  //if os_is_paused(){}else{
  rattrapage = 0
  rattrapage = date_second_span(date,ds_grid_get(planetary,81,buildaffect)/100000)
  //if rattrapage > 35 {rattrapage = 3600*24*31*6}//six mois
  if rattrapage > 3600*24*7 {rattrapage = 1*3600*24}//UNE semaine MAX

  if ds_grid_get(planetary,204,buildaffect) > 0 {//HP PLANET
  //rattrapage = 5000
  if rattrapage > 1 {
  //show_message("planet"+string(buildaffect))
  //show_message(date);
  //show_message(ds_grid_get(planetary,81,buildaffect));
  //rattrapage = floor(date-savedate)
   savedate = date 
   //show_message(rattrapage)
   
   //RATTRAPAGE DU TEMPS PERDU //commerce et create ship
if rattrapage > 0 {

//COLONISATION

if ds_grid_get(planetary,33,buildaffect) > 0 {//envoi du vaisseau
for (if4 = 0; if4 < rattrapage; if4 += 1)
   {
if ds_grid_get(planetary,33,buildaffect) > 5 {
ds_grid_add(planetary,33,buildaffect,-0.1)}else{if4 = rattrapage}}

if  ds_grid_get(planetary,33,buildaffect) < 6 {//TERRAFORMATION



createcolonisateur = 0
if instance_exists(obj_ship){with(obj_ship){
if colonisateur = 1 {other.createcolonisateur = 1}
}}
if createcolonisateur = 0 {
scr_addinfo(ds_grid_get(planetary,8,buildaffect),8,buildaffect)
with(instance_create(x,y,obj_ship)){
colonisateur = 1
mode = 5
type = 5
colorship = ds_grid_get(other.planetary,34,other.buildaffect)
enemy = global.idfixe
planetparent = other.buildaffect
vargetdsgrid[1] = ds_grid_get(obj_planetary.planetary,51,other.buildaffect)
vargetdsgrid[2] = ds_grid_get(obj_planetary.planetary,34,other.buildaffect)
vargetdsgrid[3] = (ds_grid_get(obj_planetary.planetary,7,other.buildaffect)/25)*other.optiportabletaille
vargetdsgrid[4] = ds_grid_get(obj_planetary.planetary,32,other.buildaffect)
//attaquant = 0
}
}
okterraformation = 1
for (if4 = 0; if4 < rattrapage; if4 += 1)
   {
if ds_grid_get(planetary,12,buildaffect) < 1012 {ds_grid_add(planetary,12,buildaffect,1);okterraformation = 0}//Surface pressure 1013.25 mbar
if ds_grid_get(planetary,14,buildaffect) < 123398 {ds_grid_add(planetary,14,buildaffect,1);okterraformation = 0}//Radiative power
if ds_grid_get(planetary,15,buildaffect) < 11 {ds_grid_add(planetary,15,buildaffect,0.1);okterraformation = 0}//Surface temperature 38 °c
if ds_grid_get(planetary,18,buildaffect) < 0.24 {ds_grid_add(planetary,18,buildaffect,0.01);okterraformation = 0}//Magnetic field 0.300 gauss
if ds_grid_get(planetary,19,buildaffect) < 3.9 {ds_grid_add(planetary,19,buildaffect,0.1);okterraformation = 0}//Magnetosphere 2.50 radius
if ds_grid_get(planetary,24,buildaffect) < 77 {ds_grid_add(planetary,24,buildaffect,0.1);okterraformation = 0}//air nitrogen
if ds_grid_get(planetary,25,buildaffect) < 20 {ds_grid_add(planetary,25,buildaffect,0.1);okterraformation = 0}//air oxygen
if ds_grid_get(planetary,26,buildaffect) < 0.9 {ds_grid_add(planetary,26,buildaffect,0.1);okterraformation = 0}//Air argon
if ds_grid_get(planetary,27,buildaffect) < 0.039 {ds_grid_add(planetary,27,buildaffect,0.01);okterraformation = 0}//Air Carbon dioxide

if ds_grid_get(planetary,12,buildaffect) > 1013 {ds_grid_add(planetary,12,buildaffect,-1);okterraformation = 0}//Surface pressure 1013.25 mbar
if ds_grid_get(planetary,14,buildaffect) > 123399 {ds_grid_add(planetary,14,buildaffect,-1);okterraformation = 0}//Radiative power
if ds_grid_get(planetary,15,buildaffect) > 12 {ds_grid_add(planetary,15,buildaffect,-0.1);okterraformation = 0}//Surface temperature 38 °c
if ds_grid_get(planetary,18,buildaffect) > 0.25 {ds_grid_add(planetary,18,buildaffect,-0.01);okterraformation = 0}//Magnetic field 0.300 gauss
if ds_grid_get(planetary,19,buildaffect) > 4 {ds_grid_add(planetary,19,buildaffect,-0.1);okterraformation = 0}//Magnetosphere 2.50 radius
if ds_grid_get(planetary,24,buildaffect) > 78 {ds_grid_add(planetary,24,buildaffect,-0.1);okterraformation = 0}//air nitrogen
if ds_grid_get(planetary,25,buildaffect) > 21 {ds_grid_add(planetary,25,buildaffect,-0.1);okterraformation = 0}//air oxygen
if ds_grid_get(planetary,26,buildaffect) > 1 {ds_grid_add(planetary,26,buildaffect,-0.1);okterraformation = 0}//Air argon
if ds_grid_get(planetary,27,buildaffect) > 0.04 {ds_grid_add(planetary,27,buildaffect,-0.01);okterraformation = 0}//Air Carbon dioxide
if okterraformation = 1 {if4 = rattrapage}
}
if okterraformation = 1 {
ds_grid_add(planetary,33,buildaffect,-1)
}
}


if ds_grid_get(planetary,33,buildaffect) < 2 {
scr_addinfo(ds_grid_get(planetary,8,buildaffect),6,buildaffect)
prochaineguerre = floor(random_range(500,4000)*1)
ds_grid_set(planetary,51,buildaffect,prochaineguerre)//fin de guerre relancer tout
ds_grid_set(planetary,52,buildaffect,floor((prochaineguerre/2)/1))
ds_grid_set(planetary,231,buildaffect,floor((prochaineguerre/2)/5))
ds_grid_set(planetary,232,buildaffect,floor((prochaineguerre/2)/10))
ds_grid_set(planetary,233,buildaffect,floor((prochaineguerre/2)/20))
ds_grid_set(planetary,234,buildaffect,floor((prochaineguerre/2)/50))
ds_grid_set(planetary,235,buildaffect,floor((prochaineguerre/2)/100))
ds_grid_set(planetary,236,buildaffect,floor((prochaineguerre/2)/200))
ds_grid_set(planetary,237,buildaffect,floor((prochaineguerre/2)/300))
//ds_grid_set(planetary,240,buildaffect,floor(ds_grid_get(planetary,37,buildaffect)))
ds_grid_set(planetary,240,buildaffect,floor(random_range(1,80)))

ds_grid_set(planetary,33,buildaffect,0)

ds_grid_set(planetary,32,buildaffect,global.idfixe)
ds_grid_set(planetary,35,buildaffect,1000)
ds_grid_set(planetary,36,buildaffect,3)
ds_grid_add(planetary,43,buildaffect,3)//shiptype1nbr
ds_grid_add(planetary,44,buildaffect,2)//shiptype2nbr
ds_grid_add(planetary,45,buildaffect,2)//shiptype3nbr
ds_grid_add(planetary,46,buildaffect,0)//shiptype4nbr
ds_grid_add(planetary,47,buildaffect,0)//shiptype5nbr
ds_grid_add(planetary,48,buildaffect,0)//shiptype6nbr
ds_grid_add(planetary,49,buildaffect,0)//shiptype7nbr
ds_grid_set(planetary,37,buildaffect,0)
ds_grid_set(planetary,72,buildaffect,0)
ds_grid_set(planetary,73,buildaffect,0)
ds_grid_set(planetary,74,buildaffect,0)
ds_grid_set(planetary,75,buildaffect,0)
ds_grid_set(planetary,38,buildaffect,1)
ds_grid_set(planetary,34,buildaffect,choose(2,3))
}
}


if ds_grid_get(planetary,32,buildaffect) = global.idfixe {

}else{
if planetnowid = buildaffect {totalstats = 0}
stat1 = floor(choose(0,random_range(20,82)));
stat2 = floor(random_range(0,100-stat1));
stat3 = floor(choose(0,random_range(0,100-stat1-stat2)));
stat4 = floor(100-stat1-stat2-stat3);

ds_grid_set(planetary,39,buildaffect,stat1)
ds_grid_set(planetary,40,buildaffect,stat2)
ds_grid_set(planetary,41,buildaffect,stat3)
ds_grid_set(planetary,42,buildaffect,stat4)
    /*stat1 = floor(random_range(10,50))
    stat2 = floor(random_range(10,25))
    stat3 = floor(random_range(10,25))
    stat4 = 100-(stat1+stat2+stat3)
    ds_grid_set(planetary,39,buildaffect,stat1)//STATSressourcevar//JAUGE 40
    ds_grid_set(planetary,40,buildaffect,stat2)//STATSshipsvar//JAUGE 20
    ds_grid_set(planetary,41,buildaffect,stat3)//STATSscientifiquevar//JAUGE 30
    ds_grid_set(planetary,42,buildaffect,stat4)//STATSdefensevar//JAUGE 10
    */
   }
   
   
   

if buildaffect = 0 {





///FIN COLONISATION


   //COMMERCE
   //if buildaffect = 0 {
   rattrapagevarmatter = rattrapage
   if global.enginematter = 1 {
if ds_grid_get(planetary,258,buildaffect) >= rattrapagevarmatter {
ds_grid_add(planetary,258,buildaffect,-rattrapagevarmatter)
rattrapagevarmatter = rattrapagevarmatter*2
}else{global.enginematter = 0}
}
if ds_grid_get(planetary,39,buildaffect) > 2 {
rattrapagevar = floor(((rattrapagevarmatter*(1+  (ds_grid_get(planetary,43,buildaffect)/10000) + (ds_grid_get(planetary,44,buildaffect)/7000) + (ds_grid_get(planetary,45,buildaffect)/5000) //VAISSEAU
 + (ds_grid_get(planetary,46,buildaffect)/3000)  + (ds_grid_get(planetary,47,buildaffect)/1000) //VAISSEAU
    ) )*100)*(1+(ds_grid_get(planetary,37,buildaffect)/200)))//SCIENCE *2 pour 100
    
    if buildaffect = planetnowid {scr_addinfo2(rattrapagevar,15,buildaffect)}
    
if rattrapagevarmatter > 500 {if buildaffect = 0 {scr_addinfo(rattrapagevar,1,buildaffect)}}
//if buildaffect = 0 {show_message(rattrapagevar*9)}
ds_grid_add(planetary,35,buildaffect,(rattrapagevar)*9)
ds_grid_add(planetary,90,buildaffect,rattrapagevar)
ds_grid_add(planetary,91,buildaffect,rattrapagevar)
ds_grid_add(planetary,92,buildaffect,rattrapagevar)
ds_grid_add(planetary,93,buildaffect,rattrapagevar)
ds_grid_add(planetary,94,buildaffect,rattrapagevar)
ds_grid_add(planetary,95,buildaffect,rattrapagevar)
ds_grid_add(planetary,96,buildaffect,rattrapagevar)
ds_grid_add(planetary,97,buildaffect,rattrapagevar)
ds_grid_add(planetary,98,buildaffect,rattrapagevar)
}//}
//Faire des vaisseau
nbrshipbuild = 0
//if buildaffect = 0 {
buildshipinfo[0] = 0
buildshipinfo[1] = 0
buildshipinfo[2] = 0
buildshipinfo[3] = 0
buildshipinfo[4] = 0
buildshipinfo[5] = 0
buildshipinfo[6] = 0
buildshipinfo[7] = 0
var if2
for (if2 = 0; if2 < rattrapagevarmatter/10; if2 += 1)
   {
priceship = 1
if ds_grid_get(planetary,40,buildaffect) > 5 {
 if ds_grid_get(planetary,40,buildaffect) < 10 {ds_grid_set(planetary,40,buildaffect,10)}
typechoose = 1
if ds_grid_get(planetary,40,buildaffect) > 20 {typechoose = 2}
if ds_grid_get(planetary,40,buildaffect) > 40 {typechoose = 3}
if ds_grid_get(planetary,40,buildaffect) > 60 {typechoose = 4}
if ds_grid_get(planetary,40,buildaffect) > 80 {typechoose = 7}
pricecapital = 1
if typechoose > 4 {pricecapital = typechoose
if ds_grid_get(planetary,35,buildaffect) >= floor(((priceship*(typechoose*50000))*typechoose)*pricecapital) {
}else{typechoose -= 1 ;}
pricecapital = typechoose
if ds_grid_get(planetary,35,buildaffect) >= floor(((priceship*(typechoose*50000))*typechoose)*pricecapital) {
pricecapital = typechoose
}else{typechoose -= 1 }}
if typechoose > 5 {pricecapital = typechoose}else{pricecapital = 1}


 if ds_grid_get(planetary,35,buildaffect) >= floor(((priceship*(typechoose*50000))*typechoose)*pricecapital) {
 if buildaffect = planetnowid {
 jaugevar2 = c_green
 alarmjaugevar2 = 100}
 //if buildaffect = 0 { show_message("1build")}
ds_grid_add(planetary,42+typechoose,buildaffect,1*1)
nbrshipbuild += 1 
buildshipinfo[typechoose] += 1
ds_grid_add(planetary,35,buildaffect,-(floor(((priceship*(typechoose*50000))*typechoose)*pricecapital)))
//ressourcevar = floor((((priceship*(typechoose*50000))*typechoose)*pricecapital)/9)
ressourcevar = floor(ds_grid_get(planetary,35,buildaffect)/9)//floor(((priceship*(typechoose*50))/9))
if ressourcevar > 0 {}else{ressourcevar = 0}
ds_grid_set(planetary,90,buildaffect,ressourcevar)
ds_grid_set(planetary,91,buildaffect,ressourcevar)
ds_grid_set(planetary,92,buildaffect,ressourcevar)
ds_grid_set(planetary,93,buildaffect,ressourcevar)
ds_grid_set(planetary,94,buildaffect,ressourcevar)
ds_grid_set(planetary,95,buildaffect,ressourcevar)
ds_grid_set(planetary,96,buildaffect,ressourcevar)
ds_grid_set(planetary,97,buildaffect,ressourcevar)
ds_grid_set(planetary,98,buildaffect,ressourcevar)
}else{if2 = rattrapagevarmatter ;if buildaffect = planetnowid {jaugevar2 = c_red;alarmjaugevar2 = 100}}
}else{if2 = rattrapagevarmatter;ds_grid_set(planetary,40,buildaffect,0)}
}//}
if buildaffect = planetnowid {
if buildshipinfo[1] > 0 {scr_addinfo2(buildshipinfo[1],1,buildaffect)}
if buildshipinfo[2] > 0 {scr_addinfo2(buildshipinfo[2],2,buildaffect)}
if buildshipinfo[3] > 0 {scr_addinfo2(buildshipinfo[3],3,buildaffect)}
if buildshipinfo[4] > 0 {scr_addinfo2(buildshipinfo[4],4,buildaffect)}
if buildshipinfo[5] > 0 {scr_addinfo2(buildshipinfo[5],5,buildaffect)}
if buildshipinfo[6] > 0 {scr_addinfo2(buildshipinfo[6],6,buildaffect)}
if buildshipinfo[7] > 0 {scr_addinfo2(buildshipinfo[7],7,buildaffect)}
}

if rattrapage > 500 {if buildaffect = 0 {scr_addinfo(nbrshipbuild,2,buildaffect)}}



   //RATRAPAGE BATAILLE
   shiploose = 0
   
   if ds_grid_get(planetary,52,buildaffect) > 5 && ds_grid_get(planetary,36 ,buildaffect) > 5{
rattrapagevartimeattack = (floor(rattrapage/60))//-ds_grid_get(planetary,51,buildaffect)
totalrattrapagevartimeattack = rattrapagevartimeattack


if ds_grid_get(planetary,51,buildaffect) > 0 {//ALARMATTACK
ds_grid_add(planetary,51,buildaffect,0-(floor(rattrapage/100)))}

if ds_grid_get(planetary,51,buildaffect) < 0 {ds_grid_set(planetary,51,buildaffect,0)}
if rattrapagevartimeattack > ds_grid_get(planetary,52,buildaffect) {rattrapagevartimeattack = ds_grid_get(planetary,52,buildaffect)}
if ds_grid_get(planetary,51,buildaffect) <= 0 {
//if buildaffect = 0 {show_message(rattrapagevartimeattack)}
//if ds_grid_get(planetary,43,buildaffect) > 5-(ds_grid_get(planetary,52,buildaffect)) {ds_grid_add(planetary,43,buildaffect,floor(0-(rattrapagevartimeattack)))}else{ds_grid_set(planetary,43,buildaffect,5)}
if rattrapagevartimeattack > 0 {
if (ds_grid_get(planetary,43,buildaffect)-2) > rattrapagevartimeattack{//si plus de vaisseau que de ratrapage time attack
saverattrap = floor(rattrapagevartimeattack)
if ds_grid_get(planetary,52,buildaffect) > 2 {timeattack = (ds_grid_get(planetary,43,buildaffect)-2);ds_grid_add(planetary,52,buildaffect,-saverattrap);rattrapagevartimeattack = 0;ds_grid_add(planetary,43,buildaffect,-saverattrap);shiploose += floor(saverattrap)
}}else{shiploose += ds_grid_get(planetary,43,buildaffect);rattrapagevartimeattack -= ds_grid_get(planetary,43,buildaffect)-2;ds_grid_add(planetary,52,buildaffect,-ds_grid_get(planetary,43,buildaffect)-2);ds_grid_set(planetary,43,buildaffect,2);}
}
if rattrapagevartimeattack > 0 {
if (ds_grid_get(planetary,44,buildaffect)-2) > floor(rattrapagevartimeattack/10){//si plus de vaisseau que de ratrapage time attack
saverattrap =  floor(rattrapagevartimeattack/10)
if ds_grid_get(planetary,52,buildaffect) > 2 {timeattack = (ds_grid_get(planetary,44,buildaffect)-2);ds_grid_add(planetary,52,buildaffect,-saverattrap);rattrapagevartimeattack = 0;ds_grid_add(planetary,44,buildaffect,-saverattrap);shiploose += floor(saverattrap)
}}else{shiploose += ds_grid_get(planetary,44,buildaffect);rattrapagevartimeattack -= ds_grid_get(planetary,44,buildaffect)*10;ds_grid_add(planetary,52,buildaffect,-ds_grid_get(planetary,44,buildaffect));ds_grid_set(planetary,44,buildaffect,2);}
}
if rattrapagevartimeattack > 0 {
if (ds_grid_get(planetary,45,buildaffect)-1) > floor(rattrapagevartimeattack/20) && rattrapagevartimeattack > 2 {//si plus de vaisseau que de ratrapage time attack
saverattrap =  floor(rattrapagevartimeattack/20)
if ds_grid_get(planetary,52,buildaffect) > 2 {timeattack = (ds_grid_get(planetary,45,buildaffect)-1);ds_grid_add(planetary,52,buildaffect,-saverattrap);rattrapagevartimeattack = 0;ds_grid_add(planetary,45,buildaffect,-saverattrap);shiploose += floor(saverattrap)
}}else{shiploose += ds_grid_get(planetary,45,buildaffect);rattrapagevartimeattack -= ds_grid_get(planetary,45,buildaffect)*20;ds_grid_add(planetary,52,buildaffect,-ds_grid_get(planetary,45,buildaffect));ds_grid_set(planetary,45,buildaffect,1);}
}
if rattrapagevartimeattack > 0 {
if (ds_grid_get(planetary,46,buildaffect)-0) > floor(rattrapagevartimeattack/50) && rattrapagevartimeattack > 2  {//si plus de vaisseau que de ratrapage time attack
saverattrap =  floor(rattrapagevartimeattack/50)
if ds_grid_get(planetary,52,buildaffect) > 2 {timeattack = (ds_grid_get(planetary,46,buildaffect)-0);ds_grid_add(planetary,52,buildaffect,-saverattrap);rattrapagevartimeattack = 0;ds_grid_add(planetary,46,buildaffect,-saverattrap);shiploose += floor(saverattrap)
}}else{shiploose += ds_grid_get(planetary,46,buildaffect);rattrapagevartimeattack -= ds_grid_get(planetary,46,buildaffect)*50;ds_grid_add(planetary,52,buildaffect,-ds_grid_get(planetary,46,buildaffect));ds_grid_set(planetary,46,buildaffect,0);}
}
if rattrapagevartimeattack > 0 {
if (ds_grid_get(planetary,47,buildaffect)-0) > floor(rattrapagevartimeattack/100) && rattrapagevartimeattack > 2  {//si plus de vaisseau que de ratrapage time attack
saverattrap =  floor(rattrapagevartimeattack/100)
if ds_grid_get(planetary,52,buildaffect) > 2 {timeattack = (ds_grid_get(planetary,47,buildaffect)-0);ds_grid_add(planetary,52,buildaffect,-saverattrap);rattrapagevartimeattack = 0;ds_grid_add(planetary,47,buildaffect,-saverattrap);shiploose += floor(saverattrap)
}}else{shiploose += ds_grid_get(planetary,47,buildaffect);rattrapagevartimeattack -= ds_grid_get(planetary,47,buildaffect)*100;ds_grid_add(planetary,52,buildaffect,-ds_grid_get(planetary,47,buildaffect));ds_grid_set(planetary,47,buildaffect,0);}
}
if rattrapagevartimeattack > 0 {
if (ds_grid_get(planetary,48,buildaffect)-0) > floor(rattrapagevartimeattack/300) && rattrapagevartimeattack > 2  {//si plus de vaisseau que de ratrapage time attack
saverattrap =  floor(rattrapagevartimeattack/300)
if ds_grid_get(planetary,52,buildaffect) > 2 {timeattack = (ds_grid_get(planetary,48,buildaffect)-0);ds_grid_add(planetary,52,buildaffect,-saverattrap);rattrapagevartimeattack = 0;ds_grid_add(planetary,48,buildaffect,-saverattrap);shiploose += floor(saverattrap)
}}else{shiploose += ds_grid_get(planetary,48,buildaffect);rattrapagevartimeattack -= ds_grid_get(planetary,48,buildaffect)*300;ds_grid_add(planetary,52,buildaffect,-ds_grid_get(planetary,48,buildaffect));ds_grid_set(planetary,48,buildaffect,0);}
}
if rattrapagevartimeattack > 0 {
if (ds_grid_get(planetary,49,buildaffect)-0) > floor(rattrapagevartimeattack/400) && rattrapagevartimeattack > 2  {//si plus de vaisseau que de ratrapage time attack
saverattrap =  floor(rattrapagevartimeattack/400)
if ds_grid_get(planetary,52,buildaffect) > 2 {timeattack = (ds_grid_get(planetary,49,buildaffect)-0);ds_grid_add(planetary,52,buildaffect,-saverattrap);rattrapagevartimeattack = 0 ;ds_grid_add(planetary,49,buildaffect,-saverattrap);shiploose += floor(saverattrap)
}}else{shiploose += ds_grid_get(planetary,49,buildaffect);rattrapagevartimeattack -= ds_grid_get(planetary,49,buildaffect)*400;ds_grid_add(planetary,52,buildaffect,-ds_grid_get(planetary,49,buildaffect));ds_grid_set(planetary,49,buildaffect,0);}
}

if rattrapagevartimeattack > 0 {ds_grid_add(planetary,38,buildaffect,-rattrapagevartimeattack)//STATSdefense
}
if ds_grid_get(planetary,38,buildaffect) < 0 {ds_grid_set(planetary,38,buildaffect,0)}

//RATRAPAGE SHIP ATAKANT
totalrattrapagevartimeattack2 = totalrattrapagevartimeattack
if totalrattrapagevartimeattack2 > 0{
if ds_grid_get(planetary,231,buildaffect) > totalrattrapagevartimeattack2 {ds_grid_add(planetary,231,buildaffect,-totalrattrapagevartimeattack2);totalrattrapagevartimeattack2 = 0;}else{
totalrattrapagevartimeattack2 -= ds_grid_get(planetary,231,buildaffect) ;ds_grid_set(planetary,231,buildaffect,0)}}
if totalrattrapagevartimeattack2 > 0{
if ds_grid_get(planetary,232,buildaffect) > floor(totalrattrapagevartimeattack2/10) {ds_grid_add(planetary,232,buildaffect,-floor(totalrattrapagevartimeattack2/10));totalrattrapagevartimeattack2 = 0;}else{
totalrattrapagevartimeattack2 -= floor(ds_grid_get(planetary,232,buildaffect)*10) ;ds_grid_set(planetary,232,buildaffect,0)}}
if totalrattrapagevartimeattack2 > 0{
if ds_grid_get(planetary,233,buildaffect) > floor(totalrattrapagevartimeattack2/20) {ds_grid_add(planetary,233,buildaffect,-floor(totalrattrapagevartimeattack2/20));totalrattrapagevartimeattack2 = 0;}else{
totalrattrapagevartimeattack2 -= floor(ds_grid_get(planetary,233,buildaffect)*20) ;ds_grid_set(planetary,233,buildaffect,0)}}
if totalrattrapagevartimeattack2 > 0{
if ds_grid_get(planetary,234,buildaffect) > floor(totalrattrapagevartimeattack2/50) {ds_grid_add(planetary,234,buildaffect,-floor(totalrattrapagevartimeattack2/50));totalrattrapagevartimeattack2 = 0;}else{
totalrattrapagevartimeattack2 -= floor(ds_grid_get(planetary,234,buildaffect)*50) ;ds_grid_set(planetary,234,buildaffect,0)}}
if totalrattrapagevartimeattack2 > 0{
if ds_grid_get(planetary,235,buildaffect) > floor(totalrattrapagevartimeattack2/100) {ds_grid_add(planetary,235,buildaffect,-floor(totalrattrapagevartimeattack2/100));totalrattrapagevartimeattack2 = 0;}else{
totalrattrapagevartimeattack2 -= floor(ds_grid_get(planetary,235,buildaffect)*100) ;ds_grid_set(planetary,235,buildaffect,0)}}
if totalrattrapagevartimeattack2 > 0{
if ds_grid_get(planetary,236,buildaffect) > floor(totalrattrapagevartimeattack2/300) {ds_grid_add(planetary,236,buildaffect,-floor(totalrattrapagevartimeattack2/300));totalrattrapagevartimeattack2 = 0;}else{
totalrattrapagevartimeattack2 -= floor(ds_grid_get(planetary,236,buildaffect)*300) ;ds_grid_set(planetary,236,buildaffect,0)}}
if totalrattrapagevartimeattack2 > 0{
if ds_grid_get(planetary,237,buildaffect) > floor(totalrattrapagevartimeattack2/400) {ds_grid_add(planetary,237,buildaffect,-floor(totalrattrapagevartimeattack2/400));totalrattrapagevartimeattack2 = 0;}else{
totalrattrapagevartimeattack2 -= floor(ds_grid_get(planetary,237,buildaffect)*400) ;ds_grid_set(planetary,237,buildaffect,0)}}


}

//calculate vaisseau total
varship = ds_grid_get(planetary,43,buildaffect)+
ds_grid_get(planetary,44,buildaffect)+
ds_grid_get(planetary,45,buildaffect)+
ds_grid_get(planetary,46,buildaffect)+
ds_grid_get(planetary,47,buildaffect)+
ds_grid_get(planetary,48,buildaffect)+
ds_grid_get(planetary,49,buildaffect)


ds_grid_set(planetary,36,buildaffect,varship) 

}
if ds_grid_get(planetary,52,buildaffect) < 2 {ds_grid_set(planetary,52,buildaffect,2)}
//RATRAPAGE BATAILLE
///SUPRESSION DES SHIPS PLANET MERE SI ORIGINAIRE D ATTAQUE
if ds_grid_get(planetary,34,buildaffect) = global.idfixe {
if ds_grid_get(planetary,43,0)-2 > totalrattrapagevartimeattack {ds_grid_add(planetary,43,0,-totalrattrapagevartimeattack);totalrattrapagevartimeattack = 0}else{totalrattrapagevartimeattack -= (ds_grid_get(planetary,43,0)-2);ds_grid_set(planetary,43,0,2);}
if ds_grid_get(planetary,44,0)-2 > totalrattrapagevartimeattack {ds_grid_add(planetary,43,0,-totalrattrapagevartimeattack);totalrattrapagevartimeattack = 0}else{totalrattrapagevartimeattack -= (ds_grid_get(planetary,43,0)-2);ds_grid_set(planetary,43,0,2);}
if ds_grid_get(planetary,45,0)-1 > totalrattrapagevartimeattack {ds_grid_add(planetary,43,0,-totalrattrapagevartimeattack);totalrattrapagevartimeattack = 0}else{totalrattrapagevartimeattack -= (ds_grid_get(planetary,43,0)-1);ds_grid_set(planetary,43,0,1);}
if ds_grid_get(planetary,46,0) > totalrattrapagevartimeattack {ds_grid_add(planetary,43,0,-totalrattrapagevartimeattack);totalrattrapagevartimeattack = 0}else{totalrattrapagevartimeattack -= (ds_grid_get(planetary,43,0));ds_grid_set(planetary,43,0,0);}
if ds_grid_get(planetary,47,0) > totalrattrapagevartimeattack {ds_grid_add(planetary,43,0,-totalrattrapagevartimeattack);totalrattrapagevartimeattack = 0}else{totalrattrapagevartimeattack -= (ds_grid_get(planetary,43,0));ds_grid_set(planetary,43,0,0);}

}
}


if rattrapage > 500 {if buildaffect = 0 && shiploose > 0 {scr_addinfo(shiploose,3,buildaffect)}}
/*if rattrapage > 240 {if buildaffect = 0 {show_message("Pendant votre absence vous avez perdu "+string(shiploose)+" vaisseau sur votre planète mère")}
if window_get_fullscreen()
      {}else{window_set_fullscreen(true);
      }}*/

}

rattrapage = 1
}
if buildaffect = 0 {// ds_grid_get(planetary,32,buildaffect) = global.idfixe {
ds_grid_set(planetary,81,buildaffect,date_current_datetime()*100000)}
   
   
   }
   
   ///SCIENCE ET DEF
   if ds_grid_get(planetary,204,buildaffect) > 0 {//HP PLANET

//ameliorer science
if ds_grid_get(planetary,41,buildaffect) > 2  {
  if ds_grid_get(planetary,41,buildaffect) < 10 {ds_grid_set(planetary,41,buildaffect,10)}
  ressourcevar = floor(((ds_grid_get(planetary,37,buildaffect)*1000)/9)*ds_grid_get(planetary,41,buildaffect))
if ds_grid_get(planetary,37,buildaffect) < 100 {
if ds_grid_get(planetary,35,buildaffect) <= floor(((ds_grid_get(planetary,37,buildaffect)*1000)/9)*ds_grid_get(planetary,41,buildaffect)) {
if buildaffect = planetnowid {jaugevar3 = c_red ;alarmjaugevar3 = 100}}else{if buildaffect = planetnowid {jaugevar3 = c_green;alarmjaugevar3 = 100}
ds_grid_add(planetary,72,buildaffect,ds_grid_get(planetary,41,buildaffect)/1000)
ds_grid_add(planetary,73,buildaffect,ds_grid_get(planetary,41,buildaffect)/1000)
ds_grid_add(planetary,74,buildaffect,ds_grid_get(planetary,41,buildaffect)/1000)
ds_grid_add(planetary,75,buildaffect,ds_grid_get(planetary,41,buildaffect)/1000)

if buildaffect = planetnowid {scr_addinfo2(ds_grid_get(planetary,41,buildaffect)/1000,18,buildaffect)}


if ds_grid_get(planetary,90,buildaffect) > ressourcevar{ds_grid_add(planetary,90,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,90,buildaffect,0)}
if ds_grid_get(planetary,91,buildaffect) > ressourcevar{ds_grid_add(planetary,91,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,91,buildaffect,0)}
if ds_grid_get(planetary,92,buildaffect) > ressourcevar{ds_grid_add(planetary,92,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,92,buildaffect,0)}
if ds_grid_get(planetary,93,buildaffect) > ressourcevar{ds_grid_add(planetary,93,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,93,buildaffect,0)}
if ds_grid_get(planetary,94,buildaffect) > ressourcevar{ds_grid_add(planetary,94,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,94,buildaffect,0)}
if ds_grid_get(planetary,95,buildaffect) > ressourcevar{ds_grid_add(planetary,95,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,95,buildaffect,0)}
if ds_grid_get(planetary,96,buildaffect) > ressourcevar{ds_grid_add(planetary,96,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,96,buildaffect,0)}
if ds_grid_get(planetary,97,buildaffect) > ressourcevar{ds_grid_add(planetary,97,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,97,buildaffect,0)}
if ds_grid_get(planetary,98,buildaffect) > ressourcevar{ds_grid_add(planetary,98,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,98,buildaffect,0)}
}}}else{ds_grid_set(planetary,41,buildaffect,0)}

pricestation = 100000//1000
//ameliorer defence
if ds_grid_get(planetary,42,buildaffect) >= 10
 && ds_grid_get(planetary,35,buildaffect) >= ((pricestation/10)*ds_grid_get(planetary,42,buildaffect))//-((100-ds_grid_get(planetary,38,buildaffect))*pricestation) 
 {
 
  //if ds_grid_get(planetary,42,buildaffect) < 10 {ds_grid_set(planetary,42,buildaffect,10)}
  
  price = ((pricestation/100)*ds_grid_get(planetary,42,buildaffect))//(pricestation*ds_grid_get(planetary,42,buildaffect))-((100-ds_grid_get(planetary,38,buildaffect)*pricestation))
  //ds_grid_add(planetary,38,buildaffect,floor(ds_grid_get(planetary,42,buildaffect)/10))
  totalconstruct = ds_grid_get(planetary,42,buildaffect)/4
  defconstruct = 0
  if ds_grid_get(planetary,61,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,61,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,62,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,62,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,63,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,63,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,64,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,64,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,65,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,65,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,66,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,66,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,67,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,67,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,68,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,68,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,69,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,69,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,70,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,70,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,280,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,280,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,281,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,281,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,282,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,282,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,283,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,283,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,284,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,284,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,285,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,285,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,286,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,286,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,287,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,287,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,288,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,288,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,289,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,289,buildaffect,1);defconstruct += 1}
  
if ds_grid_get(planetary,38,buildaffect) <= 100 {
//ds_grid_add(planetary,38,buildaffect,defconstruct*10)
ressourcevar = floor((defconstruct*pricestation/10))
if ds_grid_get(planetary,90,buildaffect) > ressourcevar{ds_grid_add(planetary,90,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,90,buildaffect,0)}
if ds_grid_get(planetary,91,buildaffect) > ressourcevar{ds_grid_add(planetary,91,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,91,buildaffect,0)}
if ds_grid_get(planetary,92,buildaffect) > ressourcevar{ds_grid_add(planetary,92,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,92,buildaffect,0)}
if ds_grid_get(planetary,93,buildaffect) > ressourcevar{ds_grid_add(planetary,93,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,93,buildaffect,0)}
if ds_grid_get(planetary,94,buildaffect) > ressourcevar{ds_grid_add(planetary,94,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,94,buildaffect,0)}
if ds_grid_get(planetary,95,buildaffect) > ressourcevar{ds_grid_add(planetary,95,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,95,buildaffect,0)}
if ds_grid_get(planetary,96,buildaffect) > ressourcevar{ds_grid_add(planetary,96,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,96,buildaffect,0)}
if ds_grid_get(planetary,97,buildaffect) > ressourcevar{ds_grid_add(planetary,97,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,97,buildaffect,0)}
if ds_grid_get(planetary,98,buildaffect) > ressourcevar{ds_grid_add(planetary,98,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,98,buildaffect,0)}
}
jaugevar4 = c_green ;alarmjaugevar4 = 100
}else{//ds_grid_set(planetary,42,buildaffect,0)
jaugevar4 = c_red ;alarmjaugevar4 = 100
}


if buildaffect = planetnowid {
if ds_grid_get(planetary,42,buildaffect) >= 10 {
if ds_grid_get(planetary,35,buildaffect) >= ((pricestation/10)*ds_grid_get(planetary,42,buildaffect))
 {jaugevar4 = c_green;alarmjaugevar4 = 100}else{jaugevar4 = c_red;alarmjaugevar4 = 100}}}


}
   
   }///////////BUILD AFFECT 0
   //RATRAPAGE FINI

}


   //CONSTRUIRE DES TURRET MOON
if ds_grid_get(planetary,32,buildaffect) = global.idfixe {}else{
if ds_grid_get(planetary,211,buildaffect) <= 0 && ds_grid_get(planetary,58,buildaffect) > 0 {
ds_grid_add(planetary,211,buildaffect,500);ds_grid_add(planetary,58,buildaffect,-1);ds_grid_add(planetary,53,buildaffect,-1)}else
if ds_grid_get(planetary,212,buildaffect) <= 0 && ds_grid_get(planetary,58,buildaffect) > 0  {
ds_grid_add(planetary,212,buildaffect,500);ds_grid_add(planetary,58,buildaffect,-1);ds_grid_add(planetary,53,buildaffect,-1)}else
if ds_grid_get(planetary,213,buildaffect) <= 0 && ds_grid_get(planetary,58,buildaffect) > 0  {
ds_grid_add(planetary,213,buildaffect,500);ds_grid_add(planetary,58,buildaffect,-1);ds_grid_add(planetary,53,buildaffect,-1)}else
if ds_grid_get(planetary,214,buildaffect) <= 0 && ds_grid_get(planetary,58,buildaffect) > 0  {
ds_grid_add(planetary,214,buildaffect,500);ds_grid_add(planetary,58,buildaffect,-1);ds_grid_add(planetary,53,buildaffect,-1)}
}




   if ds_grid_get(planetary,204,buildaffect) > 0 {//HP PLANET
   //SCORE
   if buildaffect = 0 {
   scoreress += ds_grid_get(planetary,35,buildaffect)
   scoreships += ds_grid_get(planetary,36,buildaffect)
   scorescience += ds_grid_get(planetary,37,buildaffect)
   scoredef += ds_grid_get(planetary,38,buildaffect)
   scoreressvalid = scoreress
   scoreshipsvalid = scoreships
   scoresciencevalid = scorescience
   scoredefvalid = scoredef
   scoretotal = floor(1+(scoreressvalid/1000000))+floor(scoreshipsvalid)+floor(scoresciencevalid)+floor(scoredefvalid)
   scoreress = 0
   scoreships = 0
   scorescience = 0
   scoredef = 0
   //if menuplanet = 3 {
   //show_message(global.idguildname)
   //show_message(global.idguild)
   //}
   }else{
   if ds_grid_get(planetary,32,buildaffect) = global.idfixe {
   scoreress += ds_grid_get(planetary,35,buildaffect)
   scoreships += ds_grid_get(planetary,36,buildaffect)
   scorescience += ds_grid_get(planetary,37,buildaffect)
   scoredef += ds_grid_get(planetary,38,buildaffect)
   }
   }


//EVENT
if ds_grid_get(planetary,32,buildaffect) = global.idfixe {
if ds_grid_get(planetary,221,buildaffect) > 0 {
ds_grid_add(planetary,221,buildaffect,-1)
}else{
ds_grid_set(planetary,221,buildaffect,random_range(55,95))
ds_grid_set(planetary,217,buildaffect,random_range(700,2100))//5000,15000)//dist
ds_grid_set(planetary,218,buildaffect,random(360))
ds_grid_set(planetary,219,buildaffect,choose(1,2,3))
ds_grid_set(planetary,220,buildaffect,random_range(5,75))
ds_grid_set(planetary,222,buildaffect,0)

}
}
 
if ds_grid_get(planetary,32,buildaffect) > 0 {
if systemstellairenow = ds_grid_get(planetary,28,buildaffect) {
//show_message(systemstellairenow);
//ds_grid_set(planetary,81,buildaffect,date_current_datetime())

//COMMERCE ET MINAGE
//buildaffect
if ds_grid_get(planetary,39,buildaffect) > 2 {
if ds_grid_get(planetary,53,buildaffect) < 50 or buildaffect = planetnowid or buildaffect = 0 {
if ds_grid_get(planetary,39,buildaffect) < 20 {
ds_grid_set(planetary,39,buildaffect,20)}
ttalvarshipinspace = 0
/*if ds_grid_get(planetary,32,buildaffect) = 2 {
if instance_exists(obj_ship){
with(obj_ship){if planetparent = other.buildaffect {other.ttalvarshipinspace += 1}}}
}*/
repeat(choose(1,2,3)){
if ds_grid_get(planetary,36,buildaffect) > ds_grid_get(planetary,53,buildaffect) {
ds_grid_add(planetary,53,buildaffect,1)
//if buildaffect = 0 {show_message("test")}
with(instance_create(x,y,obj_shipcommerce)){
colorshiprgb = ds_grid_get(obj_planetary.planetary,30,planetparent)
colorship = ds_grid_get(other.planetary,32,other.buildaffect);enemy = 0
planetparent = other.buildaffect
vardist = ds_grid_get(other.planetary,39,other.buildaffect)
alarm[0] = (3000/(1+(ds_grid_get(other.planetary,74,other.buildaffect)/100)))*(1+(ds_grid_get(other.planetary,39,other.buildaffect)/50))
//returnsurbase = 
alarm[1] = alarm[0]/2
 vargetdsgrid[1] = ds_grid_get(obj_planetary.planetary,51,planetparent)
vargetdsgrid[2] = ds_grid_get(obj_planetary.planetary,34,planetparent)
vargetdsgrid[3] = ((ds_grid_get(obj_planetary.planetary,7,planetparent)/25)*obj_planetary.optiportabletaille)
vargetdsgrid[4] = ds_grid_get(obj_planetary.planetary,32,planetparent)

}}
}
//alarm[1] = 1000/ds_grid_get(planetary,39,planetnowid)/
}}else{ds_grid_set(planetary,39,buildaffect,0)}
}



}

}//if ds_grid_get(planetary,204,buildaffect) > 0 {//HP PLANET




if ds_grid_get(planetary,204,buildaffect) > 0 {//HP PLANET




//BATAILLE

if ds_grid_get(planetary,34,buildaffect) = global.idfixe or ds_grid_get(planetary,34,buildaffect) <= 5 or ds_grid_get(planetary,32,buildaffect) = global.idfixe or buildaffect = 0 {
if ds_grid_get(planetary,51,buildaffect) > 0 {//ALARMATTACK
//si même defenseur qu'attaquant ,relancer
if ds_grid_get(planetary,34,buildaffect) > 5 {if ds_grid_get(planetary,34,buildaffect) = ds_grid_get(planetary,32,buildaffect) {
ds_grid_set(planetary,34,buildaffect,choose(2,3))}
if ds_grid_get(planetary,51,buildaffect) < 2 {ds_grid_add(planetary,51,buildaffect,-1)}
}else{
if ds_grid_get(planetary,51,buildaffect) < 2 {ds_grid_set(planetary,34,buildaffect,choose(2,3))
if ds_grid_get(planetary,32,buildaffect) = ds_grid_get(planetary,34,buildaffect)  {
//ds_grid_set(planetary,52,buildaffect,prochaineguerre)
ds_grid_set(planetary,34,buildaffect,choose(2,3))
ds_grid_set(planetary,51,buildaffect,1)
}else{ds_grid_set(planetary,51,buildaffect,0)}}
}

//EVITER BUG CHANGER D ATTAQUANT AU DERNIER MOMENT
if ds_grid_get(planetary,51,buildaffect) < 2 {}else{
ds_grid_add(planetary,51,buildaffect,-1)
}

if ds_grid_get(planetary,51,buildaffect) <= 0 {
blablafight = ds_grid_get(planetary,8,buildaffect)
scr_addinfo(blablafight,4,buildaffect)}

ds_grid_set(planetary,238,buildaffect,0)
ds_grid_set(planetary,239,buildaffect,0)

if ds_grid_get(planetary,51,buildaffect) < 2 {//ENVOI JUSTE AVANT DEMARAGE PREVENIR LES GENS PAR CONTRE PERD TOUT LES CHANGEMENT COMME DAB
if global.phpload = 1 && buildaffect > 0 {
ds_grid_set(planetary,81,buildaffect,date_current_datetime()*100000)
if ds_grid_get(planetary,32,buildaffect) = floor(global.idfixe) {
ds_grid_set(planetary,230,buildaffect,global.name)}
var get1 = floor(ds_grid_get(planetary,51,buildaffect))
//var get2 = floor(ds_grid_get(planetary,52,buildaffect2))
//ENVOI
   var get2 = 
   string(ds_grid_get(planetary,231,buildaffect))+"$"+
   string(ds_grid_get(planetary,232,buildaffect))+"$"+
   string(ds_grid_get(planetary,233,buildaffect))+"$"+
   string(ds_grid_get(planetary,234,buildaffect))+"$"+
   string(ds_grid_get(planetary,235,buildaffect))+"$"+
   string(ds_grid_get(planetary,236,buildaffect))+"$"+
   string(ds_grid_get(planetary,237,buildaffect))+"$"+
   string(ds_grid_get(planetary,240,buildaffect))
var get3 = floor(ds_grid_get(planetary,34,buildaffect))
var get4 = floor(ds_grid_get(planetary,81,buildaffect))
var get5 = floor(ds_grid_get(planetary,35,buildaffect))
var get6 = floor(ds_grid_get(planetary,43,buildaffect))
var get7 = floor(ds_grid_get(planetary,44,buildaffect))
var get8 = floor(ds_grid_get(planetary,45,buildaffect))
var get9 = floor(ds_grid_get(planetary,46,buildaffect))
var get10 = floor(ds_grid_get(planetary,47,buildaffect))
var get11 = floor(ds_grid_get(planetary,48,buildaffect))
var get12 = floor(ds_grid_get(planetary,49,buildaffect))
var get13 = floor(ds_grid_get(planetary,37,buildaffect))
var get14 = floor(ds_grid_get(planetary,38,buildaffect))

   scr_ecritureplanet2(buildaffect,get1,get2,get3,get4,get5,get6,get7,get8,get9,get10,get11,get12,get13,get14);
   }}


}else{


if ds_grid_get(planetary,32,buildaffect) = ds_grid_get(planetary,34,buildaffect) &&
ds_grid_get(planetary,34,buildaffect) < 5 {
ds_grid_set(planetary,34,buildaffect,choose(2,3))}




if ds_grid_get(planetary,231,buildaffect) > 0 {ds_grid_add(planetary,231,buildaffect,-1)}else
if ds_grid_get(planetary,232,buildaffect) > 0 {ds_grid_add(planetary,232,buildaffect,-1)}else
if ds_grid_get(planetary,233,buildaffect) > 0 {ds_grid_add(planetary,233,buildaffect,-1)}else
if ds_grid_get(planetary,234,buildaffect) > 0 {ds_grid_add(planetary,234,buildaffect,-1)}else
if ds_grid_get(planetary,235,buildaffect) > 0 {ds_grid_add(planetary,235,buildaffect,-1)}else
if ds_grid_get(planetary,236,buildaffect) > 0 {ds_grid_add(planetary,236,buildaffect,-1)}else
if ds_grid_get(planetary,237,buildaffect) > 0 {ds_grid_add(planetary,237,buildaffect,-1)}else
{ds_grid_add(planetary,52,buildaffect,-1)}

if ds_grid_get(planetary,52,buildaffect) > 1 {//TIME ATTACK
//ds_grid_add(planetary,52,buildaffect,-1)


//ABANDON
var s = ds_grid_get(planetary,238,buildaffect)
var s2 = ds_grid_get(planetary,239,buildaffect)
if s <= 0 {s = 1}
if s2 <= 0 {s2 = 1}
ttalshipdef = 1+((s / s2)*2)
if is_undefined(ttalshipdef) {
ttalshipdef = 1
}
if ds_grid_get(planetary,32,buildaffect) > 5 {
//ttalshipdef = 1
}else{
//if ttalshipdef < 1 {ttalshipdef = 1}
//show_message(ttalshipdef)
//show_message(ds_grid_get(planetary,238,buildaffect))
//show_message(ds_grid_get(planetary,239,buildaffect))
//show_message(1+(real(ds_grid_get(planetary,239,buildaffect)) / real(ds_grid_get(planetary,238,buildaffect))))
if ds_grid_get(planetary,238,buildaffect) > floor(ds_grid_get(planetary,239,buildaffect)/1.5) && 
ds_grid_get(planetary,239,buildaffect) > ds_grid_get(planetary,36,buildaffect) {

var i;
 for (i = 0; i < ds_grid_get(planetary,36,buildaffect); i += 1)
    {if i > 100 {i = ds_grid_get(planetary,36,buildaffect)}
    with(instance_create(x,y,obj_shipcommerce)){
    fuyard = 1
colorshiprgb = ds_grid_get(obj_planetary.planetary,30,planetparent)
colorship = ds_grid_get(other.planetary,32,other.buildaffect);enemy = 0
planetparent = other.buildaffect
vardist = ds_grid_get(other.planetary,39,other.buildaffect)
alarm[0] = (3000/(1+(ds_grid_get(other.planetary,74,other.buildaffect)/100)))*(1+(20/50))
//returnsurbase = 
alarm[1] = alarm[0]+100
 vargetdsgrid[1] = ds_grid_get(obj_planetary.planetary,51,planetparent)
vargetdsgrid[2] = ds_grid_get(obj_planetary.planetary,34,planetparent)
vargetdsgrid[3] = ((ds_grid_get(obj_planetary.planetary,7,planetparent)/25)*obj_planetary.optiportabletaille)
vargetdsgrid[4] = ds_grid_get(obj_planetary.planetary,32,planetparent)

}
    }
    ds_grid_set(planetary,32,buildaffect,0)
}
}




//si joueur ou IA a abandonner alors prendre la place direct
if ds_grid_get(planetary,32,buildaffect) <= 0 {
prochaineguerre = floor(random_range(100,(1000)))
ds_grid_set(planetary,32,buildaffect,ds_grid_get(planetary,34,buildaffect))
ds_grid_set(planetary,51,buildaffect,prochaineguerre)//fin de guerre relancer tout
ds_grid_set(planetary,52,buildaffect,prochaineguerre/3)
//ds_grid_set(planetary,34,buildaffect,choose(2,3))
ds_grid_set(planetary,231,buildaffect,floor((prochaineguerre/2)/5))
ds_grid_set(planetary,232,buildaffect,floor((prochaineguerre/2)/10))
ds_grid_set(planetary,233,buildaffect,floor((prochaineguerre/2)/20))
ds_grid_set(planetary,234,buildaffect,floor((prochaineguerre/2)/50))
ds_grid_set(planetary,235,buildaffect,floor((prochaineguerre/2)/100))
ds_grid_set(planetary,236,buildaffect,floor((prochaineguerre/2)/200))
ds_grid_set(planetary,237,buildaffect,floor((prochaineguerre/2)/300))
ds_grid_set(planetary,240,buildaffect,floor(random_range(1,80)))
ds_grid_set(planetary,36,buildaffect,15)//STATSships
ds_grid_set(planetary,43,buildaffect,10)//shiptype1nbr
ds_grid_set(planetary,44,buildaffect,3)//shiptype2nbr
ds_grid_set(planetary,45,buildaffect,2)//shiptype3nbr
ds_grid_set(planetary,46,buildaffect,0)//shiptype4nbr
ds_grid_set(planetary,47,buildaffect,0)//shiptype5nbr
ds_grid_set(planetary,48,buildaffect,0)//shiptype6nbr
ds_grid_set(planetary,49,buildaffect,0)//shiptype7nbr
ds_grid_set(planetary,38,buildaffect,2)//STATSdefense
ds_grid_set(planetary,72,buildaffect,ds_grid_get(planetary,72,buildaffect)/2)
ds_grid_set(planetary,73,buildaffect,ds_grid_get(planetary,72,buildaffect)/2)
ds_grid_set(planetary,74,buildaffect,ds_grid_get(planetary,72,buildaffect)/2)
ds_grid_set(planetary,75,buildaffect,ds_grid_get(planetary,72,buildaffect)/2)
ds_grid_set(planetary,53,buildaffect,0)//ttalvarshipinspace
ds_grid_set(planetary,54,buildaffect,0)//shiptype1flight
ds_grid_set(planetary,55,buildaffect,0)//shiptype2flight
ds_grid_set(planetary,56,buildaffect,0)//shiptype3flight
ds_grid_set(planetary,57,buildaffect,0)//shiptype4flight
ds_grid_set(planetary,58,buildaffect,0)//shiptype5flight
ds_grid_set(planetary,59,buildaffect,0)//shiptype6flight
ds_grid_set(planetary,60,buildaffect,0)//shiptype7flight
ds_grid_set(planetary,238,buildaffect,0)
ds_grid_set(planetary,239,buildaffect,0)
if ds_grid_get(planetary,32,buildaffect) < 5 {
ds_grid_set(planetary,230,buildaffect,0)}
if global.phpload = 1 && buildaffect > 0  {
ds_grid_set(planetary,81,buildaffect,date_current_datetime()*100000)
if ds_grid_get(planetary,32,buildaffect) = floor(global.idfixe) {
ds_grid_set(planetary,230,buildaffect,global.name)}
var get1 = floor(ds_grid_get(planetary,51,buildaffect))
//var get2 = floor(ds_grid_get(planetary,52,buildaffect2))
//ENVOI
   var get2 = 
   string(ds_grid_get(planetary,231,buildaffect))+"$"+
   string(ds_grid_get(planetary,232,buildaffect))+"$"+
   string(ds_grid_get(planetary,233,buildaffect))+"$"+
   string(ds_grid_get(planetary,234,buildaffect))+"$"+
   string(ds_grid_get(planetary,235,buildaffect))+"$"+
   string(ds_grid_get(planetary,236,buildaffect))+"$"+
   string(ds_grid_get(planetary,237,buildaffect))+"$"+
   string(ds_grid_get(planetary,240,buildaffect))
var get3 = floor(ds_grid_get(planetary,34,buildaffect))
var get4 = floor(ds_grid_get(planetary,81,buildaffect))
var get5 = floor(ds_grid_get(planetary,35,buildaffect))
var get6 = floor(ds_grid_get(planetary,43,buildaffect))
var get7 = floor(ds_grid_get(planetary,44,buildaffect))
var get8 = floor(ds_grid_get(planetary,45,buildaffect))
var get9 = floor(ds_grid_get(planetary,46,buildaffect))
var get10 = floor(ds_grid_get(planetary,47,buildaffect))
var get11 = floor(ds_grid_get(planetary,48,buildaffect))
var get12 = floor(ds_grid_get(planetary,49,buildaffect))
var get13 = floor(ds_grid_get(planetary,37,buildaffect))
var get14 = floor(ds_grid_get(planetary,38,buildaffect))

   scr_ecritureplanet2(buildaffect,get1,get2,get3,get4,get5,get6,get7,get8,get9,get10,get11,get12,get13,get14);
   }
}


//ECHEC
if ds_grid_get(planetary,38,buildaffect) < 10 && 
ds_grid_get(planetary,36,buildaffect) <= 6 {

if ds_grid_get(planetary,204,buildaffect) <= 0 {}else{
if buildaffect = 0 {//si echec planet maire
//ds_grid_add(planetary,35,buildaffect,-(ds_grid_get(planetary,35,buildaffect)/2))

ressourcevar = floor((ds_grid_get(planetary,35,buildaffect)/2)/9)
if ds_grid_get(planetary,90,buildaffect) > 0{ds_grid_add(planetary,90,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,90,buildaffect,0)}
if ds_grid_get(planetary,91,buildaffect) > 0{ds_grid_add(planetary,91,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,91,buildaffect,0)}
if ds_grid_get(planetary,92,buildaffect) > 0{ds_grid_add(planetary,92,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,92,buildaffect,0)}
if ds_grid_get(planetary,93,buildaffect) > 0{ds_grid_add(planetary,93,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,93,buildaffect,0)}
if ds_grid_get(planetary,94,buildaffect) > 0{ds_grid_add(planetary,94,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,94,buildaffect,0)}
if ds_grid_get(planetary,95,buildaffect) > 0{ds_grid_add(planetary,95,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,95,buildaffect,0)}
if ds_grid_get(planetary,96,buildaffect) > 0{ds_grid_add(planetary,96,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,96,buildaffect,0)}
if ds_grid_get(planetary,97,buildaffect) > 0{ds_grid_add(planetary,97,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,97,buildaffect,0)}
if ds_grid_get(planetary,98,buildaffect) > 0{ds_grid_add(planetary,98,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,98,buildaffect,0)}

varhelpdie = choose(1,2)

prochaineguerre = floor(random_range(10,(ds_grid_get(planetary,36,buildaffect)*20)))
if prochaineguerre < 50 { prochaineguerre = 50}
ds_grid_set(planetary,51,buildaffect,prochaineguerre)//fin de guerre relancer tout
ds_grid_set(planetary,52,buildaffect,floor((prochaineguerre/2)/varhelpdie))
ds_grid_set(planetary,231,buildaffect,floor((prochaineguerre/2)/3))
ds_grid_set(planetary,232,buildaffect,floor((prochaineguerre/2)/10))
ds_grid_set(planetary,233,buildaffect,floor((prochaineguerre/2)/20))
ds_grid_set(planetary,234,buildaffect,floor((prochaineguerre/2)/50))
ds_grid_set(planetary,235,buildaffect,floor((prochaineguerre/2)/100))
ds_grid_set(planetary,236,buildaffect,floor((prochaineguerre/2)/200))
ds_grid_set(planetary,237,buildaffect,floor((prochaineguerre/2)/300))
ds_grid_set(planetary,240,buildaffect,floor(random_range(1,80)))
ds_grid_set(planetary,34,buildaffect,choose(2,3))
ds_grid_set(planetary,36,buildaffect,15)//STATSships
ds_grid_set(planetary,43,buildaffect,10)//shiptype1nbr
ds_grid_set(planetary,44,buildaffect,3)//shiptype2nbr
ds_grid_set(planetary,45,buildaffect,2)//shiptype3nbr
ds_grid_set(planetary,46,buildaffect,0)//shiptype4nbr
ds_grid_set(planetary,47,buildaffect,0)//shiptype5nbr
ds_grid_set(planetary,48,buildaffect,0)//shiptype6nbr
ds_grid_set(planetary,49,buildaffect,0)//shiptype7nbr
ds_grid_set(planetary,38,buildaffect,2)//STATSdefense
ds_grid_set(planetary,72,buildaffect,ds_grid_get(planetary,72,buildaffect)/2)
ds_grid_set(planetary,73,buildaffect,ds_grid_get(planetary,72,buildaffect)/2)
ds_grid_set(planetary,74,buildaffect,ds_grid_get(planetary,72,buildaffect)/2)
ds_grid_set(planetary,75,buildaffect,ds_grid_get(planetary,72,buildaffect)/2)
ds_grid_set(planetary,53,buildaffect,0)//ttalvarshipinspace
ds_grid_set(planetary,54,buildaffect,0)//shiptype1flight
ds_grid_set(planetary,55,buildaffect,0)//shiptype2flight
ds_grid_set(planetary,56,buildaffect,0)//shiptype3flight
ds_grid_set(planetary,57,buildaffect,0)//shiptype4flight
ds_grid_set(planetary,58,buildaffect,0)//shiptype5flight
ds_grid_set(planetary,59,buildaffect,0)//shiptype6flight
ds_grid_set(planetary,60,buildaffect,0)//shiptype7flight
ds_grid_set(planetary,238,buildaffect,0)
ds_grid_set(planetary,239,buildaffect,0)
if ds_grid_get(planetary,32,buildaffect) < 5 {
ds_grid_set(planetary,230,buildaffect,0)}



}else{//si echec colonie rend la planete libre



var i;
 for (i = 0; i < ds_grid_get(planetary,36,buildaffect); i += 1)
    {if i > 100 {i = ds_grid_get(planetary,36,buildaffect)}
    with(instance_create(x,y,obj_shipcommerce)){
    fuyard = 1
colorshiprgb = ds_grid_get(obj_planetary.planetary,30,planetparent)
colorship = ds_grid_get(other.planetary,32,other.buildaffect);enemy = 0
planetparent = other.buildaffect
vardist = ds_grid_get(other.planetary,39,other.buildaffect)
alarm[0] = (3000/(1+(ds_grid_get(other.planetary,74,other.buildaffect)/100)))*(1+(20/50))
//returnsurbase = 
alarm[1] = alarm[0]+100
 vargetdsgrid[1] = ds_grid_get(obj_planetary.planetary,51,planetparent)
vargetdsgrid[2] = ds_grid_get(obj_planetary.planetary,34,planetparent)
vargetdsgrid[3] = ((ds_grid_get(obj_planetary.planetary,7,planetparent)/25)*obj_planetary.optiportabletaille)
vargetdsgrid[4] = ds_grid_get(obj_planetary.planetary,32,planetparent)

}
    }

blablafight = ds_grid_get(planetary,8,buildaffect)
scr_addinfo(blablafight,5,buildaffect)

ds_grid_set(planetary,32,buildaffect,ds_grid_get(planetary,34,buildaffect))//COLONISER OU NON
//ds_grid_set(planetary,35,buildaffect,0)//STATSressource
ds_grid_set(planetary,36,buildaffect,15)//STATSships
ds_grid_set(planetary,43,buildaffect,10)//shiptype1nbr
ds_grid_set(planetary,44,buildaffect,3)//shiptype2nbr
ds_grid_set(planetary,45,buildaffect,2)//shiptype3nbr
ds_grid_set(planetary,46,buildaffect,0)//shiptype4nbr
ds_grid_set(planetary,47,buildaffect,0)//shiptype5nbr
ds_grid_set(planetary,48,buildaffect,0)//shiptype6nbr
ds_grid_set(planetary,49,buildaffect,0)//shiptype7nbr
ds_grid_set(planetary,37,buildaffect,0)//STATSscientifique
ds_grid_set(planetary,72,buildaffect,0)
ds_grid_set(planetary,73,buildaffect,0)
ds_grid_set(planetary,74,buildaffect,0)
ds_grid_set(planetary,75,buildaffect,0)
ds_grid_set(planetary,38,buildaffect,2)//STATSdefense
ds_grid_set(planetary,53,buildaffect,0)//ttalvarshipinspace
ds_grid_set(planetary,54,buildaffect,0)//shiptype1flight
ds_grid_set(planetary,55,buildaffect,0)//shiptype2flight
ds_grid_set(planetary,56,buildaffect,0)//shiptype3flight
ds_grid_set(planetary,57,buildaffect,0)//shiptype4flight
ds_grid_set(planetary,58,buildaffect,0)//shiptype5flight
ds_grid_set(planetary,59,buildaffect,0)//shiptype6flight
ds_grid_set(planetary,60,buildaffect,0)//shiptype7flight
/*ds_grid_set(planetary,39,buildaffect,5000)//STATSressourcevar//JAUGE 
ds_grid_set(planetary,40,buildaffect,0)//STATSshipsvar//JAUGE 
ds_grid_set(planetary,41,buildaffect,0)//STATSscientifiquevar//JAUGE 
ds_grid_set(planetary,42,buildaffect,0)//STATSdefensevar//JAUGE 
*/
stat1 = floor(random_range(10,50))
stat2 = floor(random_range(10,25))
stat3 = floor(random_range(10,25))
stat4 = 100-(stat1+stat2+stat3)
ds_grid_set(planetary,39,buildaffect,stat1)//STATSressourcevar//JAUGE 40
ds_grid_set(planetary,40,buildaffect,stat2)//STATSshipsvar//JAUGE 20
ds_grid_set(planetary,41,buildaffect,stat3)//STATSscientifiquevar//JAUGE 30
ds_grid_set(planetary,42,buildaffect,stat4)//STATSdefensevar//JAUGE 10
varhelpdie = choose(1,2)
prochaineguerre = floor(random_range(10,(ds_grid_get(planetary,36,buildaffect)*20)))
if prochaineguerre < 50 { prochaineguerre = 50}
ds_grid_set(planetary,51,buildaffect,prochaineguerre)//fin de guerre relancer tout
ds_grid_set(planetary,52,buildaffect,floor((prochaineguerre/3)/varhelpdie))
ds_grid_set(planetary,34,buildaffect,choose(2,3))
ds_grid_set(planetary,231,buildaffect,floor((prochaineguerre/2)/5))
ds_grid_set(planetary,232,buildaffect,floor((prochaineguerre/2)/10))
ds_grid_set(planetary,233,buildaffect,floor((prochaineguerre/2)/20))
ds_grid_set(planetary,234,buildaffect,floor((prochaineguerre/2)/50))
ds_grid_set(planetary,235,buildaffect,floor((prochaineguerre/2)/100))
ds_grid_set(planetary,236,buildaffect,floor((prochaineguerre/2)/200))
ds_grid_set(planetary,237,buildaffect,floor((prochaineguerre/2)/300))
ds_grid_set(planetary,240,buildaffect,floor(random_range(1,80)))
ds_grid_set(planetary,238,buildaffect,0)
ds_grid_set(planetary,239,buildaffect,0)
if ds_grid_get(planetary,32,buildaffect) < 5 {
ds_grid_set(planetary,230,buildaffect,0)}


//if ds_grid_get(planetary,32,buildaffect) = global.idfixe or
//ds_grid_get(planetary,34,buildaffect) = global.idfixe {
if global.phpload = 1  && buildaffect > 0  {
ds_grid_set(planetary,81,buildaffect,date_current_datetime()*100000)
if ds_grid_get(planetary,32,buildaffect) = floor(global.idfixe) {
ds_grid_set(planetary,230,buildaffect,global.name)}else{
ds_grid_set(planetary,230,buildaffect,34)
}
var get1 = floor(ds_grid_get(planetary,51,buildaffect))
//var get2 = floor(ds_grid_get(planetary,52,buildaffect2))
//ENVOI
   var get2 = 
   string(ds_grid_get(planetary,231,buildaffect))+"$"+
   string(ds_grid_get(planetary,232,buildaffect))+"$"+
   string(ds_grid_get(planetary,233,buildaffect))+"$"+
   string(ds_grid_get(planetary,234,buildaffect))+"$"+
   string(ds_grid_get(planetary,235,buildaffect))+"$"+
   string(ds_grid_get(planetary,236,buildaffect))+"$"+
   string(ds_grid_get(planetary,237,buildaffect))+"$"+
   string(ds_grid_get(planetary,240,buildaffect))
   
   //show_message(get2)
   
var get3 = floor(ds_grid_get(planetary,34,buildaffect))
var get4 = floor(ds_grid_get(planetary,81,buildaffect))
var get5 = floor(ds_grid_get(planetary,35,buildaffect))
var get6 = floor(ds_grid_get(planetary,43,buildaffect))
var get7 = floor(ds_grid_get(planetary,44,buildaffect))
var get8 = floor(ds_grid_get(planetary,45,buildaffect))
var get9 = floor(ds_grid_get(planetary,46,buildaffect))
var get10 = floor(ds_grid_get(planetary,47,buildaffect))
var get11 = floor(ds_grid_get(planetary,48,buildaffect))
var get12 = floor(ds_grid_get(planetary,49,buildaffect))
var get13 = floor(ds_grid_get(planetary,37,buildaffect))
var get14 = floor(ds_grid_get(planetary,38,buildaffect))

   scr_ecritureplanet2(buildaffect,get1,get2,get3,get4,get5,get6,get7,get8,get9,get10,get11,get12,get13,get14);
   }
//}

}
}
//FIN ECHEC
}else{



//sinon continuer la guerre
repeatnbr = choose(1,2,3,4,5,7,8)

if repeatnbr > ds_grid_get(planetary,52,buildaffect) {
repeatnbr = ds_grid_get(planetary,52,buildaffect)
}

if systemstellairenow = ds_grid_get(planetary,28,buildaffect) {}else{
popoupo = 0//floor(random_range(1,50))
if popoupo = 1 {}else{repeatnbr = 0}
}

//ds_grid_add(planetary,52,buildaffect,-1)
if repeatnbr > 0 {//if buildaffect = planetnowid {show_message(ttalshipdef)}
var ig;
if ttalshipdef < 1 {ttalshipdef = 1}
if ttalshipdef > 2 {ttalshipdef = 2}
typelaunch[1] = 0
typelaunch[2] = 0
typelaunch[3] = 0
typelaunch[4] = 0
typelaunch[5] = 0
typelaunch[6] = 0
typelaunch[7] = 0
 for (ig = 0; ig < repeatnbr*ttalshipdef; ig += 1)
    {//DEFENSEUR
if ds_grid_get(planetary,36,buildaffect) > ds_grid_get(planetary,53,buildaffect) {



modeship = 0
if ds_grid_get(planetary,54,buildaffect)+typelaunch[1] < ds_grid_get(planetary,43,buildaffect)-1 && ds_grid_get(planetary,43,buildaffect) > 1  {modeship = 1}
if ds_grid_get(planetary,55,buildaffect)+typelaunch[2] < ds_grid_get(planetary,44,buildaffect)-1 && ds_grid_get(planetary,44,buildaffect) > 1  {modeship = 2}
if ds_grid_get(planetary,56,buildaffect)+typelaunch[3] < ds_grid_get(planetary,45,buildaffect) && ds_grid_get(planetary,45,buildaffect) > 0  {modeship = 3}
if ds_grid_get(planetary,57,buildaffect)+typelaunch[4] < ds_grid_get(planetary,46,buildaffect) && ds_grid_get(planetary,46,buildaffect) > 0  {modeship = 4}
if ds_grid_get(planetary,58,buildaffect)+typelaunch[5] < ds_grid_get(planetary,47,buildaffect) && ds_grid_get(planetary,47,buildaffect) > 0  {modeship = 5}
if ds_grid_get(planetary,59,buildaffect)+typelaunch[6] < ds_grid_get(planetary,48,buildaffect) && ds_grid_get(planetary,48,buildaffect) > 0  {modeship = 6}
if ds_grid_get(planetary,60,buildaffect)+typelaunch[7] < ds_grid_get(planetary,49,buildaffect) && ds_grid_get(planetary,49,buildaffect) > 0  {modeship = 7}

/*if ds_grid_get(planetary,230+modeship,buildaffect) > 0 {okcreate = 1}else{okcreate = 0;modeship -= 1}
if ds_grid_get(planetary,230+modeship,buildaffect) > 0 {okcreate = 1}else{okcreate = 0;modeship -= 1}
if ds_grid_get(planetary,230+modeship,buildaffect) > 0 {okcreate = 1}else{okcreate = 0;modeship -= 1}
if ds_grid_get(planetary,230+modeship,buildaffect) > 0 {okcreate = 1}else{okcreate = 0;modeship -= 1}
if ds_grid_get(planetary,230+modeship,buildaffect) > 0 {okcreate = 1}else{okcreate = 0;modeship -= 1}
if ds_grid_get(planetary,230+modeship,buildaffect) > 0 {okcreate = 1}else{okcreate = 0;modeship -= 1}
if ds_grid_get(planetary,230+modeship,buildaffect) > 0 {okcreate = 1}else{okcreate = 0;modeship -= 1}*/

//modeship = choose(modeship1,modeship2,modeship3,modeship4,modeship5)


typelaunch[modeship] += 1
//ds_grid_add(planetary,53,buildaffect,1)
if modeship > 0 {
if ds_grid_get(planetary,53+modeship,buildaffect) < 
ds_grid_get(planetary,42+modeship,buildaffect) {//vaisseau allie
ds_grid_add(planetary,239,buildaffect,1)//add ship create war total
with(instance_create(x,y,obj_ship)){

mode = other.modeship
colorship = ds_grid_get(other.planetary,32,other.buildaffect)
enemy = ds_grid_get(obj_planetary.planetary,32,other.buildaffect);
planetparent = other.buildaffect
rotaaleatdecol = random(360)
image_angle = point_direction(room_width/2,room_height/2,room_width/2+lengthdir_x(100,rotaaleatdecol),room_height/2+lengthdir_y(100,rotaaleatdecol))
xx = room_width/2+lengthdir_x((ds_grid_get(obj_planetary.planetary,7,other.planetnowid)/25)*other.optiportabletaille,rotaaleatdecol)
yy = room_height/2+lengthdir_y((ds_grid_get(obj_planetary.planetary,7,other.planetnowid)/25)*other.optiportabletaille,rotaaleatdecol)
vargetdsgrid[1] = ds_grid_get(obj_planetary.planetary,51,other.buildaffect)
vargetdsgrid[2] = ds_grid_get(obj_planetary.planetary,34,other.buildaffect)
vargetdsgrid[3] = (ds_grid_get(obj_planetary.planetary,7,other.buildaffect)/25)*other.optiportabletaille
vargetdsgrid[4] = ds_grid_get(obj_planetary.planetary,32,other.buildaffect)
}}}else{//ir -= 1
}
}}//}
if ds_grid_get(obj_planetary.planetary,34,buildaffect) > 5 {
modeship = choose(1,2,3,4,5,6,7)}else{
modeship = choose(1,2,3,4,5)}
repeat(repeatnbr*1.5){

//modeship = choose(1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,3,3,3,3,4,4,4,5,5,5,6,7)
okcreate = 1


if ds_grid_get(planetary,230+modeship,buildaffect) > 0 {okcreate = 1}else{okcreate = 0;modeship -= 1}
if ds_grid_get(planetary,230+modeship,buildaffect) > 0 {okcreate = 1}else{okcreate = 0;modeship -= 1}
if ds_grid_get(planetary,230+modeship,buildaffect) > 0 {okcreate = 1}else{okcreate = 0;modeship -= 1}
if ds_grid_get(planetary,230+modeship,buildaffect) > 0 {okcreate = 1}else{okcreate = 0;modeship -= 1}
if ds_grid_get(planetary,230+modeship,buildaffect) > 0 {okcreate = 1}else{okcreate = 0;modeship -= 1}
if ds_grid_get(planetary,230+modeship,buildaffect) > 0 {okcreate = 1}else{okcreate = 0;modeship -= 1}
if ds_grid_get(planetary,230+modeship,buildaffect) > 0 {okcreate = 1}else{okcreate = 0;modeship -= 1}


if okcreate = 1 { ds_grid_add(planetary,230+modeship,buildaffect,-1)

if echelle = 0 && buildaffect = planetnowid {
if audio_is_playing(snd_quantum){}else{

audio_sound_gain(snd_quantum,1*obj_planetary.optiportabletaille,0)
audio_play_sound(snd_quantum,2,false);}
}

with(instance_create(x,y,obj_ship)){
attakguy = 1
createtp = 1
mode = other.modeship
colorship = ds_grid_get(other.planetary,34,other.buildaffect)
enemy = ds_grid_get(obj_planetary.planetary,34,other.buildaffect)
planetparent = other.buildaffect
vargetdsgrid[1] = ds_grid_get(obj_planetary.planetary,51,other.buildaffect)
vargetdsgrid[2] = ds_grid_get(obj_planetary.planetary,34,other.buildaffect)
vargetdsgrid[3] = (ds_grid_get(obj_planetary.planetary,7,other.buildaffect)/25)*other.optiportabletaille
vargetdsgrid[4] = ds_grid_get(obj_planetary.planetary,32,other.buildaffect)
//attaquant = 0
}}}



}

}
}else{

prochaineguerre = floor(random_range(10,(ds_grid_get(planetary,36,buildaffect)*20)))
if prochaineguerre < 50 { prochaineguerre = 50}
ds_grid_set(planetary,51,buildaffect,prochaineguerre)//fin de guerre relancer tout
ds_grid_set(planetary,52,buildaffect,prochaineguerre/3)
ds_grid_set(planetary,34,buildaffect,choose(2,3))
ds_grid_set(planetary,231,buildaffect,floor((prochaineguerre/2)/5))
ds_grid_set(planetary,232,buildaffect,floor((prochaineguerre/2)/10))
ds_grid_set(planetary,233,buildaffect,floor((prochaineguerre/2)/20))
ds_grid_set(planetary,234,buildaffect,floor((prochaineguerre/2)/50))
ds_grid_set(planetary,235,buildaffect,floor((prochaineguerre/2)/100))
ds_grid_set(planetary,236,buildaffect,floor((prochaineguerre/2)/200))
ds_grid_set(planetary,237,buildaffect,floor((prochaineguerre/2)/300))
ds_grid_set(planetary,240,buildaffect,floor(random_range(1,80)))
ds_grid_set(planetary,238,buildaffect,0)
ds_grid_set(planetary,239,buildaffect,0)
if ds_grid_get(planetary,32,buildaffect) < 5 {
ds_grid_set(planetary,230,buildaffect,0)}

}

}

}//if global.loadphp



}//if ds_grid_get(planetary,204,buildaffect) > 0 {//HP PLANET

if ds_grid_get(planetary,204,buildaffect) <= 0 {//SI HP PLANET alors supprimer toute possession
ds_grid_set(planetary,32,buildaffect,0)
ds_grid_set(planetary,43,buildaffect,0)//shiptype1nbr
ds_grid_set(planetary,44,buildaffect,0)//shiptype2nbr
ds_grid_set(planetary,45,buildaffect,0)//shiptype3nbr
ds_grid_set(planetary,35,buildaffect,0)//STATSressource
ds_grid_set(planetary,36,buildaffect,0)//STATSships
ds_grid_set(planetary,37,buildaffect,0)//STATSscientifique
ds_grid_set(planetary,38,buildaffect,0)//STATSdefense
ds_grid_set(planetary,39,buildaffect,0)//STATSressourcevar//JAUGE 40
ds_grid_set(planetary,40,buildaffect,0)//STATSshipsvar//JAUGE 20
ds_grid_set(planetary,41,buildaffect,0)//STATSscientifiquevar//JAUGE 30
ds_grid_set(planetary,42,buildaffect,0)//STATSdefensevar//JAUGE 10

}
//}
if alarm[4] < 0 && global.modesolo = 0{
//envoi de troupe dans l'atmo si ship libre encore ,et pour durer de 1000 step en rotation

if device_mouse_check_button_released(0, mb_left) && point_distance(xxmousebase, yymousebase, xxmousefin, yymousefin) < 30 {
xxmouse = device_mouse_x(0);
yymouse = device_mouse_y(0);

notroupe = 0
if instance_exists(obj_ship){
with(obj_ship){if suislepatron = 1 {other.notroupe = 1}}}


if point_distance(room_width/2,room_height/2,xxmouse,yymouse) < (ds_grid_get(obj_planetary.planetary,7,planetnowid)/25)*optiportabletaille {
colorrect29 = c_white
if menuplanet = 0 && notroupe = 0 && echelle = 0 && menuhelp = 0 {


var iff;
for (iff = 0; iff < 8; iff += 1)
   {
   randomize();
if ds_grid_get(planetary,36,planetnowid) > ds_grid_get(planetary,53,planetnowid) &&
ds_grid_get(planetary,32,planetnowid) = global.idfixe {

//modeship = choose(1,2,3,4,5)
modeship = 1
if iff = 1 or iff = 2 {nbrvar = 2}else
if iff = 3 {nbrvar = 1}else
{nbrvar = 0}
if ds_grid_get(planetary,53+iff,planetnowid) < ds_grid_get(planetary,42+iff,planetnowid)  && ds_grid_get(planetary,42+iff,planetnowid) > nbrvar  {modeship = iff}
/*if ds_grid_get(planetary,55,buildaffect) < ds_grid_get(planetary,44,0) && ds_grid_get(planetary,44,0) > 0 {modeship2 = 2}
if ds_grid_get(planetary,56,buildaffect) < ds_grid_get(planetary,45,0) && ds_grid_get(planetary,45,0) > 0  {modeship3 = 3}
if ds_grid_get(planetary,57,buildaffect) < ds_grid_get(planetary,46,0) && ds_grid_get(planetary,46,0) > 0  {modeship4 = 4}
if ds_grid_get(planetary,58,buildaffect) < ds_grid_get(planetary,47,0) && ds_grid_get(planetary,47,0) > 0  {modeship5 = 5}*/
//if modeship5 > 1 &&  modeship4 > 1  {modeship = choose(modeship5,modeship4)}



okcreate = 0
if ds_grid_get(planetary,53+modeship,planetnowid) < ds_grid_get(planetary,42+modeship,planetnowid) {okcreate = 1}
//if ds_grid_get(planetary,36,buildaffect) > 1 {//vaisseau allie
if okcreate = 1 && modeship > 0 {
//ds_grid_add(planetary,53,planetnowid,1) 
with(instance_create(x,y,obj_ship)){
//if other.modeship > 5 {show_message(other.modeship)}
mode = other.modeship
alarm[6] = 3000
colorship = ds_grid_get(other.planetary,32,other.planetnowid)
enemy = ds_grid_get(obj_planetary.planetary,32,other.planetnowid);
stationaire = 1
planetparent = other.planetnowid
rotaaleatdecol = random(360)
image_angle = point_direction(room_width/2,room_height/2,room_width/2+lengthdir_x(100,rotaaleatdecol),room_height/2+lengthdir_y(100,rotaaleatdecol))
xx = room_width/2+lengthdir_x((ds_grid_get(obj_planetary.planetary,7,other.planetnowid)/25)*other.optiportabletaille,rotaaleatdecol)
yy = room_height/2+lengthdir_y((ds_grid_get(obj_planetary.planetary,7,other.planetnowid)/25)*other.optiportabletaille,rotaaleatdecol)
vargetdsgrid[1] = ds_grid_get(obj_planetary.planetary,51,other.planetnowid)
vargetdsgrid[2] = ds_grid_get(obj_planetary.planetary,34,other.planetnowid)
vargetdsgrid[3] = (ds_grid_get(obj_planetary.planetary,7,other.planetnowid)/25)*other.optiportabletaille
vargetdsgrid[4] = ds_grid_get(obj_planetary.planetary,32,other.planetnowid)
}}
}else{iff = 10}
}
}
}else{

}
}
if point_distance(room_width/2,room_height/2,xxmouse,yymouse) < (ds_grid_get(obj_planetary.planetary,7,planetnowid)/25)*optiportabletaille {
colorrect29 = c_white}else{
colorrect29 = planetarycolor
}

//selectioner des ship et enregistrer


xxmousefin = 0
yymousefin = 0
if device_mouse_check_button_pressed(0, mb_left) {
xxmousebase = device_mouse_x(0);
yymousebase = device_mouse_y(0);
}



if device_mouse_check_button_released(0, mb_left) {
if alarm[3] < 0 {alarm[3] = 20}else{doubletap = 1}
xxmousefin = device_mouse_x(0);
yymousefin = device_mouse_y(0);
if point_distance(xxmousebase, yymousebase, xxmousefin, yymousefin) < 30 {
//ENVOYER SUR CIBLE SI PLANETNOW = PARENT
if instance_exists(obj_ship){
with(obj_ship){if suislepatron = 1 && planetparent = obj_planetary.planetnowid 
&& obj_planetary.menuplanet = 0 && obj_planetary.echelle = 0 && obj_planetary.menuhelp = 0 {
if other.yymousefin > room_height/10 && other.yymousefin < room_height-(room_height/10) && 
other.xxmousefin > room_width/10 && other.xxmousefin < room_width-room_width/10 {
vardist2 = point_distance(xxcursor,yycursor,room_width/2,room_height/2)
//if vardist2 > ((ds_grid_get(obj_planetary.planetary,7,planetparent)/25)*obj_planetary.optiportabletaille)+100 &&
//vardist2 < ((ds_grid_get(obj_planetary.planetary,7,planetparent)/25)*obj_planetary.optiportabletaille)+550 {

xxcursor = other.xxmousefin
yycursor = other.yymousefin
}
//show_message(xxcursor)
}}}//}

xxmousefin = 0
yymousefin = 0
xxmousebase = 0
yymousebase = 0
}
}

//double tap pour enlever tout les vaisseau
if echelle = 0 && menuplanet = 0 && menuhelp = 0 {
if doubletap = 1 {
if instance_exists(obj_ship){with(obj_ship){//si trop proche enlever le patron des ship de la planete actuel
//if planetparent = other.planetnowid { 
if suislepatron = 1 {suislepatron = 0}//}
}}doubletap = 0}}


if xxmousefin = 0 {}else{
if xxmousefin < xxmousebase {xxmousefin2 = xxmousefin;xxmousefin = xxmousebase;xxmousebase = xxmousefin2}
if yymousefin < yymousebase {yymousefin2 = yymousefin;yymousefin = yymousebase;yymousebase = yymousefin2}

if instance_exists(obj_ship){
with(obj_ship){
if point_in_rectangle(xx, yy,other.xxmousebase, other.yymousebase, other.xxmousefin, other.yymousefin) {
//if collision_rectangle(other.xxmousebase, other.yymousebase, other.xxmousefin, other.yymousefin, id, true, true ){
if /*ds_grid_get(obj_planetary.planetary,32,planetparent) = 1 &&*/ 
enemy = global.idfixe && partir = 0 && planetparent = obj_planetary.planetnowid {suislepatron = 1 ;}
}}}
xxmousefin = 0
yymousefin = 0
xxmousebase = 0
yymousebase = 0
}



//envoyer coloniser ou conquerrir en clickant sur planet non colo en demandant si ship exist tjr
//si oui envoyer ses ship pour de vrai avec return ,a la fin du compteur les transformer en attaquant 1 sur la planete
//faire pop par 15 les vaisseau moi je dis

if device_mouse_check_button_released(0, mb_left) && echelle = 0 && menuplanet = 0  && menuhelp = 0 {
xxmouse = device_mouse_x(0);
yymouse = device_mouse_y(0);

//MOON
if point_distance(xxlune1,yylune1,xxmouse,yymouse) < (ds_grid_get(obj_planetary.planetary,83,planetnowid)/25)*optiportabletaille {
checkok = 0
if instance_exists(obj_ship){with(obj_ship){if suislepatron = 1 {if planetparent = obj_planetary.planetnowid {
if type = 5 && other.checkok = 0 {
ds_grid_add(obj_planetary.planetary,47,planetparent,-1)
ds_grid_add(obj_planetary.planetary,58,planetparent,-1)
ds_grid_add(obj_planetary.planetary,53,planetparent,-1)
partir = 4
other.checkok += 1 
suislepatron = 0
alarm[6] = -1
}}}}}
}

//PLANET
if point_distance(room_width/2,room_height/2,xxmouse,yymouse) < (ds_grid_get(obj_planetary.planetary,7,planetnowid)/25)*optiportabletaille {

if global.phpload = 1 {
if ds_grid_get(planetary,242,planetnowid) = global.idguild {//ENVOYER FLOTTE A GUILD ALLIE


checkok1 = 0
checkok2 = 0
checkok3 = 0
checkok4 = 0
checkok5 = 0
checkok6 = 0
checkok7 = 0
grandealarm = 0
if instance_exists(obj_ship){with(obj_ship){if suislepatron = 1 {if planetparent = obj_planetary.planetnowid {}else{
if ds_grid_get(obj_planetary.planetary,32,planetparent) = global.idfixe {
partir = 5
if type = 1 {other.checkok1 += 1}
if type = 2 {other.checkok2 += 1}
if type = 3 {other.checkok3 += 1}
if type = 4 {other.checkok4 += 1}
if type = 5 {other.checkok5 += 1}
if type = 6 {other.checkok6 += 1}
if type = 7 {other.checkok7 += 1}
suislepatron = 0
destinationship = other.planetnowid
alarm[7] = (ds_grid_get(obj_planetary.planetary,50,obj_planetary.planetnowid)*1)/(1+(ds_grid_get(obj_planetary.planetary,50,planetparent)/10))
//alarm[7] = 10
other.grandealarm = alarm[7]}}}}}







}else if ds_grid_get(obj_planetary.planetary,32,planetnowid) = 0 {//coloniser
if destroyplanetnow = 0 {
if ds_grid_get(planetary,204,buildaffect) >= 0 {
checkok = 0
if instance_exists(obj_ship){with(obj_ship){if suislepatron = 1 {if planetparent = obj_planetary.planetnowid {}else{
if type = 5 && other.checkok = 0 {
ds_grid_add(obj_planetary.planetary,47,planetparent,-1)
ds_grid_add(obj_planetary.planetary,58,planetparent,-1)
ds_grid_add(obj_planetary.planetary,53,planetparent,-1)
partir = 1
other.checkok += 1 
suislepatron = 0
alarm[7] = (ds_grid_get(obj_planetary.planetary,50,obj_planetary.planetnowid)*1)/(1+(ds_grid_get(obj_planetary.planetary,50,planetparent)/10))}}}}}

//coute 10 vaisseau mode
//if checkok >= 10 {
if checkok = 0{}else{

ds_grid_set(planetary,33,planetnowid,(ds_grid_get(obj_planetary.planetary,50,obj_planetary.planetnowid)*1)/(1+(ds_grid_get(obj_planetary.planetary,50,planetparent)/10)))//}
}
}
}
}else if ds_grid_get(obj_planetary.planetary,32,planetnowid) > 0 && ds_grid_get(obj_planetary.planetary,32,planetnowid) > 0 {//attaquer

if ds_grid_get(planetary,36,0) > 5 { //si plus de 5 vaisseau alors attaquer possible

checkok = 0
type1plus = 0
type2plus = 0
type3plus = 0
type4plus = 0
type5plus = 0
type6plus = 0
type7plus = 0
alarm7 = 0
if instance_exists(obj_ship){with(obj_ship){if suislepatron = 1 {if planetparent = obj_planetary.planetnowid {}else{
partir = 2
other.checkok += 1 
if type = 1 {other.type1plus += 1}
if type = 2 {other.type2plus += 1}
if type = 3 {other.type3plus += 1}
if type = 4 {other.type4plus += 1}
if type = 5 {other.type5plus += 1}
if type = 6 {other.type6plus += 1}
if type = 7 {other.type7plus += 1}
suislepatron = 0//ds_grid_set(planetary,51,planetnowid,floor(ds_grid_get(planetary,50,planetnowid)/(1+(ds_grid_get(planetary,50,0)/10))))
alarm[7] = (ds_grid_get(obj_planetary.planetary,50,obj_planetary.planetnowid)*1)/(1+(ds_grid_get(obj_planetary.planetary,50,planetparent)/10))
other.alarm7 = alarm[7]}}}}
if checkok = 0 or menuplanet = 1 or menuhelp = 1 {}else{
if ds_grid_get(planetary,34,planetnowid) < 6 {
ds_grid_set(planetary,51,planetnowid,alarm7)
ds_grid_set(planetary,34,planetnowid,global.idfixe)

ds_grid_set(planetary,52,planetnowid,checkok)
if type1plus > 0 {ds_grid_set(planetary,231,planetnowid,type1plus)}
if type2plus > 0 {ds_grid_set(planetary,232,planetnowid,type2plus)}
if type3plus > 0 {ds_grid_set(planetary,233,planetnowid,type3plus)}
if type4plus > 0 {ds_grid_set(planetary,234,planetnowid,type4plus)}
if type5plus > 0 {ds_grid_set(planetary,235,planetnowid,type5plus)}
if type6plus > 0 {ds_grid_set(planetary,236,planetnowid,type6plus)}
if type7plus > 0 {ds_grid_set(planetary,237,planetnowid,type7plus)}
ds_grid_set(planetary,240,planetnowid,floor(ds_grid_get(planetary,37,planetnowid)))
if global.phpload = 1 {
if ds_grid_get(planetary,32,planetnowid) = floor(global.idfixe) {
ds_grid_set(planetary,230,planetnowid,global.name)}
//ET ENVOI NET CODE
ds_grid_set(planetary,81,planetnowid,date_current_datetime()*100000)
var get1 = floor(ds_grid_get(planetary,51,planetnowid))

//ENVOI
   var get2 = 
   string(ds_grid_get(planetary,231,planetnowid))+"$"+
   string(ds_grid_get(planetary,232,planetnowid))+"$"+
   string(ds_grid_get(planetary,233,planetnowid))+"$"+
   string(ds_grid_get(planetary,234,planetnowid))+"$"+
   string(ds_grid_get(planetary,235,planetnowid))+"$"+
   string(ds_grid_get(planetary,236,planetnowid))+"$"+
   string(ds_grid_get(planetary,237,planetnowid))+"$"+
   string(ds_grid_get(planetary,240,planetnowid))

var get3 = floor(ds_grid_get(planetary,34,planetnowid))
var get4 = floor(ds_grid_get(planetary,81,planetnowid))
var get5 = floor(ds_grid_get(planetary,35,planetnowid))
var get6 = floor(ds_grid_get(planetary,43,planetnowid))
var get7 = floor(ds_grid_get(planetary,44,planetnowid))
var get8 = floor(ds_grid_get(planetary,45,planetnowid))
var get9 = floor(ds_grid_get(planetary,46,planetnowid))
var get10 = floor(ds_grid_get(planetary,47,planetnowid))
var get11 = floor(ds_grid_get(planetary,48,planetnowid))
var get12 = floor(ds_grid_get(planetary,49,planetnowid))
var get13 = floor(ds_grid_get(planetary,37,planetnowid))
var get14 = floor(ds_grid_get(planetary,38,planetnowid))

   scr_ecritureplanet3(planetnowid,get1,get2,get3,get4,get5,get6,get7,get8,get9,get10,get11,get12,get13,get14);}


}}
}

}else if ds_grid_get(obj_planetary.planetary,32,planetnowid) = global.idfixe {//envoyer les vaisseau pour ajouter
checkok = 0
if instance_exists(obj_ship){with(obj_ship){if suislepatron = 1 {if planetparent = obj_planetary.planetnowid {}else{
if ds_grid_get(obj_planetary.planetary,32,planetparent) = global.idfixe {
partir = 3
other.checkok += 1 
suislepatron = 0
destinationship = other.planetnowid
alarm[7] = (ds_grid_get(obj_planetary.planetary,50,obj_planetary.planetnowid)*1)/(1+(ds_grid_get(obj_planetary.planetary,50,planetparent)/10))}}}}}

}
}



}}
}




/*ds_grid_add(planetary,43,buildaffect,2)//shiptype1nbr
ds_grid_add(planetary,44,buildaffect,0)//shiptype2nbr
ds_grid_add(planetary,45,buildaffect,0)//shiptype3nbr
ds_grid_add(planetary,46,buildaffect,0)//shiptype4nbr
ds_grid_add(planetary,47,buildaffect,0)//shiptype5nbr
ds_grid_add(planetary,48,buildaffect,0)//shiptype6nbr
ds_grid_add(planetary,49,buildaffect,0)//shiptype7nbr*/


#define scr_datephp
//NOUVEAU PHP GRID
/*ds_grid_set(planetary,81,buildaffect2,date_current_datetime()*100000)
var get1 = floor(ds_grid_get(planetary,51,buildaffect2))
//var get2 = floor(ds_grid_get(planetary,52,buildaffect2))
var get3 = floor(ds_grid_get(planetary,34,buildaffect2))
   var get2 = 
   string(ds_grid_get(planetary,231,buildaffect2))+"$"+
   string(ds_grid_get(planetary,232,buildaffect2))+"$"+
   string(ds_grid_get(planetary,233,buildaffect2))+"$"+
   string(ds_grid_get(planetary,234,buildaffect2))+"$"+
   string(ds_grid_get(planetary,235,buildaffect2))+"$"+
   string(ds_grid_get(planetary,236,buildaffect2))+"$"+
   string(ds_grid_get(planetary,237,buildaffect2))+"$"+
   string(ds_grid_get(planetary,240,buildaffect2))
var get4 = floor(ds_grid_get(planetary,81,buildaffect2))
var get5 = floor(ds_grid_get(planetary,35,buildaffect2))
var get6 = floor(ds_grid_get(planetary,43,buildaffect2))
var get7 = floor(ds_grid_get(planetary,44,buildaffect2))
var get8 = floor(ds_grid_get(planetary,45,buildaffect2))
var get9 = floor(ds_grid_get(planetary,46,buildaffect2))
var get10 = floor(ds_grid_get(planetary,47,buildaffect2))
var get11 = floor(ds_grid_get(planetary,48,buildaffect2))
var get12 = floor(ds_grid_get(planetary,49,buildaffect2))
var get13 = floor(ds_grid_get(planetary,37,buildaffect2))
var get14 = floor(ds_grid_get(planetary,38,buildaffect2))
   scr_ecritureplanet(buildaffect2,
   get1,
   get2,
   get3,
   get4,
   //ds_grid_get(planetary,81,buildaffect2)*100000,//time
   get5,
   get6,
   get7,
   get8,
   get9,
   get10,
   get11,
   get12,
   get13,
   get14);
*/










date = date_current_datetime()



if real(global.recup1) = 0 or string(global.recup1) = "" or string(global.recup1) = "id." {}else{  //id

//NAME guild PLANET
if ds_grid_get(planetary,32,real(global.recup1)) = global.idfixe {
   ds_grid_set(planetary,241,real(global.recup1),global.idguildname)
   ds_grid_set(planetary,242,real(global.recup1),global.idguild)}else{
   ds_grid_set(planetary,241,real(global.recup1),global.recup23)
   ds_grid_set(planetary,242,real(global.recup1),real(global.recup24))
   }

   //TOUJOURS LIRE SHIP POUR SI QUELQU UN A ENVOYER SHIP a guy pas co
   //si
   ds_grid_set(planetary,43,real(global.recup1),real(global.recup7))
   ds_grid_set(planetary,44,real(global.recup1),real(global.recup8))
   ds_grid_set(planetary,45,real(global.recup1),real(global.recup9))
   ds_grid_set(planetary,46,real(global.recup1),real(global.recup10))
   ds_grid_set(planetary,47,real(global.recup1),real(global.recup11))
   ds_grid_set(planetary,48,real(global.recup1),real(global.recup12))
   ds_grid_set(planetary,49,real(global.recup1),real(global.recup13))
   
   
   //GUILDE ET NAME
      ds_grid_set(planetary,230,real(global.recup1),global.recup17)//idname
     
   

   
if real(global.recup5) > ds_grid_get(planetary,81,real(global.recup1)){//REEQUILLIBRER par rapport a la table ,recuperer la derniere maj

//ratrapage pour petit malin pas connecter pendant son attaque ,sinon les autres font passer l attak ,planet ce fais peter ,mais pas les vaisseau de l attakant
petitmalin = 0
if ds_grid_get(planetary,34,buildaffect2) = global.idfixe {
if real(global.recup4) = global.idfixe {}else{
if ds_grid_get(planetary,52,buildaffect2) > 0 {
petitmalin = ds_grid_get(planetary,52,buildaffect2)

}}
}


//FAIRE LES DS_GRID_SET


   ds_grid_set(planetary,34,real(global.recup1),real(global.recup4))

ok = 1
    //obliger a ne pas lire si idfixe a abandonner la planete
   //ne pas lire si 32 = global.idfixe && ds_grid_get(planetary,51,real(global.recup1))) <= 1 
   if ds_grid_get(planetary,32,real(global.recup1)) = global.idfixe &&
   ds_grid_get(planetary,51,real(global.recup1)) <= 1 {
   if real(global.recup16) = global.idfixe {}else{ok = 0}}
   
   if ok = 1 {//if buildaffect2 = 2 {show_message(ds_grid_get(planetary,32,real(global.recup1)))}
   if real(global.recup16) > 0 { ds_grid_set(planetary,32,real(global.recup1),real(global.recup16))}}
   //show_message(real(global.recup16))



   ds_grid_set(planetary,81,real(global.recup1),real(global.recup5))//time
   ds_grid_set(planetary,35,real(global.recup1),real(global.recup6))
   //diviser ressource
   ds_grid_set(planetary,90,real(global.recup1),real(global.recup6)/9)
   ds_grid_set(planetary,91,real(global.recup1),real(global.recup6)/9)
   ds_grid_set(planetary,92,real(global.recup1),real(global.recup6)/9)
   ds_grid_set(planetary,93,real(global.recup1),real(global.recup6)/9)
   ds_grid_set(planetary,94,real(global.recup1),real(global.recup6)/9)
   ds_grid_set(planetary,95,real(global.recup1),real(global.recup6)/9)
   ds_grid_set(planetary,96,real(global.recup1),real(global.recup6)/9)
   ds_grid_set(planetary,97,real(global.recup1),real(global.recup6)/9)
   ds_grid_set(planetary,98,real(global.recup1),real(global.recup6)/9)
   
   
   


//RECUPERER LES SHIP DETRUIT ,SI ATK OU DEF DE LA PLANETE

////si en ligne et ce defend ou attak
////si 34 = global.idfixe //ajouter le nombre de vaisseau détruis coter def et atk
/*if ds_grid_get(planetary,51,real(global.recup1)) <= 0 {
if ds_grid_get(planetary,34,real(global.recup1)) = global.idfixe or ds_grid_get(planetary,32,real(global.recup1)) = global.idfixe {
timeatk2 = 
timeatk2 = ds_grid_get(planetary,52,real(global.recup1))
timeatk3 = timeatk2
if ds_grid_get(planetary,43,real(global.recup1)) > 3 && timeatk2 > 0 {timeatk2 -= ds_grid_get(planetary,260,real(global.recup1)); ds_grid_add(planetary,43,real(global.recup1),-ds_grid_get(planetary,260,real(global.recup1)))}else{if timeatk2 > 0 {ds_grid_set(planetary,43,real(global.recup1),3)}}
if ds_grid_get(planetary,44,real(global.recup1)) > 2 && timeatk2 > 0 {timeatk2 -= ds_grid_get(planetary,261,real(global.recup1)); ds_grid_add(planetary,44,real(global.recup1),-ds_grid_get(planetary,261,real(global.recup1)))}else{if timeatk2 > 0 {ds_grid_set(planetary,44,real(global.recup1),2)}}
if ds_grid_get(planetary,45,real(global.recup1)) > 2 && timeatk2 > 0 {timeatk2 -= ds_grid_get(planetary,262,real(global.recup1)); ds_grid_add(planetary,45,real(global.recup1),-ds_grid_get(planetary,262,real(global.recup1)))}else{if timeatk2 > 0 {ds_grid_set(planetary,45,real(global.recup1),2)}}
if ds_grid_get(planetary,46,real(global.recup1)) > 0 && timeatk2 > 0 {timeatk2 -= ds_grid_get(planetary,263,real(global.recup1)); ds_grid_add(planetary,46,real(global.recup1),-ds_grid_get(planetary,263,real(global.recup1)))}else{if timeatk2 > 0 {ds_grid_set(planetary,46,real(global.recup1),0)}}
if ds_grid_get(planetary,47,real(global.recup1)) > 0 && timeatk2 > 0 {timeatk2 -= ds_grid_get(planetary,264,real(global.recup1)); ds_grid_add(planetary,47,real(global.recup1),-ds_grid_get(planetary,264,real(global.recup1)))}else{if timeatk2 > 0 {ds_grid_set(planetary,47,real(global.recup1),0)}}
if ds_grid_get(planetary,48,real(global.recup1)) > 0 && timeatk2 > 0 {timeatk2 -= ds_grid_get(planetary,265,real(global.recup1)); ds_grid_add(planetary,48,real(global.recup1),-ds_grid_get(planetary,265,real(global.recup1)))}else{if timeatk2 > 0 {ds_grid_set(planetary,48,real(global.recup1),0)}}
if ds_grid_get(planetary,49,real(global.recup1)) > 0 && timeatk2 > 0 {timeatk2 -= ds_grid_get(planetary,266,real(global.recup1)); ds_grid_add(planetary,49,real(global.recup1),-ds_grid_get(planetary,266,real(global.recup1)))}else{if timeatk2 > 0 {ds_grid_set(planetary,49,real(global.recup1),0)}}
if ds_grid_get(planetary,231,real(global.recup1)) > 0 && timeatk3 > 0 {timeatk2 -= ds_grid_get(planetary,68,real(global.recup1));ds_grid_add(planetary,231,real(global.recup1),-ds_grid_get(planetary,267,real(global.recup1)))}else{if timeatk3 > 0 {ds_grid_set(planetary,231,real(global.recup1),0)}}
if ds_grid_get(planetary,232,real(global.recup1)) > 0 && timeatk3 > 0 {timeatk2 -= ds_grid_get(planetary,68,real(global.recup1));ds_grid_add(planetary,232,real(global.recup1),-ds_grid_get(planetary,268,real(global.recup1)))}else{if timeatk3 > 0 {ds_grid_set(planetary,232,real(global.recup1),0)}}
if ds_grid_get(planetary,233,real(global.recup1)) > 0 && timeatk3 > 0 {timeatk2 -= ds_grid_get(planetary,68,real(global.recup1));ds_grid_add(planetary,233,real(global.recup1),-ds_grid_get(planetary,269,real(global.recup1)))}else{if timeatk3 > 0 {ds_grid_set(planetary,233,real(global.recup1),0)}}
if ds_grid_get(planetary,234,real(global.recup1)) > 0 && timeatk3 > 0 {timeatk2 -= ds_grid_get(planetary,68,real(global.recup1));ds_grid_add(planetary,234,real(global.recup1),-ds_grid_get(planetary,270,real(global.recup1)))}else{if timeatk3 > 0 {ds_grid_set(planetary,234,real(global.recup1),0)}}
if ds_grid_get(planetary,235,real(global.recup1)) > 0 && timeatk3 > 0 {timeatk2 -= ds_grid_get(planetary,68,real(global.recup1));ds_grid_add(planetary,235,real(global.recup1),-ds_grid_get(planetary,271,real(global.recup1)))}else{if timeatk3 > 0 {ds_grid_set(planetary,235,real(global.recup1),0)}}
if ds_grid_get(planetary,236,real(global.recup1)) > 0 && timeatk3 > 0 {timeatk2 -= ds_grid_get(planetary,68,real(global.recup1));ds_grid_add(planetary,236,real(global.recup1),-ds_grid_get(planetary,272,real(global.recup1)))}else{if timeatk3 > 0 {ds_grid_set(planetary,236,real(global.recup1),0)}}
if ds_grid_get(planetary,237,real(global.recup1)) > 0 && timeatk3 > 0 {timeatk2 -= ds_grid_get(planetary,68,real(global.recup1));ds_grid_add(planetary,237,real(global.recup1),-ds_grid_get(planetary,273,real(global.recup1)))}else{if timeatk3 > 0 {ds_grid_set(planetary,237,real(global.recup1),0)}}
timesub = floor(min(timeatk2,timeatk3))
if timesub < 0 {timesub = 0}
ds_grid_set(planetary,52,real(global.recup1),timesub)
ds_grid_set_region(planetary,261,real(global.recup1),273,real(global.recup1),0)//REMETRE LES DESTROY SHIP A 0
}else{
ds_grid_set_region(planetary,261,real(global.recup1),273,real(global.recup1),0)//REMETRE LES DESTROY SHIP A 0
}
}*/



   
   
   ds_grid_set(planetary,37,real(global.recup1),real(global.recup14))
   //diviser science
   ds_grid_set(planetary,72,real(global.recup1),real(global.recup14)/4)
   ds_grid_set(planetary,73,real(global.recup1),real(global.recup14)/4)
   ds_grid_set(planetary,74,real(global.recup1),real(global.recup14)/4)
   ds_grid_set(planetary,75,real(global.recup1),real(global.recup14)/4)
   
   ds_grid_set(planetary,38,real(global.recup1),real(global.recup15))
   
 
   
   if ds_grid_get(planetary,32,real(global.recup1)) = global.idfixe {
   ds_grid_set(planetary,241,real(global.recup1),global.idguildname)
   ds_grid_set(planetary,242,real(global.recup1),global.idguild)}else{
   ds_grid_set(planetary,241,real(global.recup1),global.recup23)
   ds_grid_set(planetary,242,real(global.recup1),real(global.recup24))
   }
   
   
   //ds_grid_set(planetary,40,real(global.recup1),real(global.recup15))//idguild
   //ds_grid_set(planetary,40,real(global.recup1),real(global.recup15))//idguildname
   //VAR STATS
   
   ds_grid_set(planetary,39,real(global.recup1),real(global.recup18))
   ds_grid_set(planetary,40,real(global.recup1),real(global.recup19))
   ds_grid_set(planetary,41,real(global.recup1),real(global.recup20))
   ds_grid_set(planetary,42,real(global.recup1),real(global.recup21))
   
   if petitmalin > 0 {
   if ds_grid_get(planetary,43,0) > 2+floor(petitmalin/1) { ds_grid_add(planetary,43,0,-floor(petitmalin/1))}else{ds_grid_set(planetary,43,0,2)}
if ds_grid_get(planetary,44,0) > 2+floor(petitmalin/10) { ds_grid_add(planetary,44,0,-floor(petitmalin/10))}else{ds_grid_set(planetary,44,0,2)}//10
if ds_grid_get(planetary,45,0) > 1+floor(petitmalin/20) { ds_grid_add(planetary,45,0,-floor(petitmalin/20))}else{ds_grid_set(planetary,45,0,1)}//20
if ds_grid_get(planetary,46,0) > 0+floor(petitmalin/50) { ds_grid_add(planetary,46,0,-floor(petitmalin/50))}else{ds_grid_set(planetary,46,0,0)}//50
if ds_grid_get(planetary,47,0) > 0+floor(petitmalin/100) { ds_grid_add(planetary,47,0,-floor(petitmalin/100))}else{ds_grid_set(planetary,47,0,0)}//100
if ds_grid_get(planetary,48,0) > 0+floor(petitmalin/200) { ds_grid_add(planetary,48,0,-floor(petitmalin/200))}else{ds_grid_set(planetary,48,0,0)}//200
if ds_grid_get(planetary,49,0) > 0+floor(petitmalin/300) { ds_grid_add(planetary,49,0,-floor(petitmalin/300))}else{ds_grid_set(planetary,49,0,0)}//300
}
      ds_grid_set(planetary,51,real(global.recup1),real(global.recup2))
      
      
      

   //ds_grid_set(planetary,52,real(global.recup1),real(global.recup3))//FLOTTE
   //RECEPTION FLOTTE ATK
   str6 = string_split2("$",global.recup3,true);
   //show_message(str6[0])
   shipattak1 = real(str6[0])
   shipattak2 = real(str6[1])
   shipattak3 = real(str6[2])
   shipattak4 = real(str6[3])
   shipattak5 = real(str6[4])
   shipattak6 = real(str6[5])
   shipattak7 = real(str6[6])
   sciencefltte = real(str6[7])
   shipattak = shipattak1+shipattak2+shipattak3+shipattak4+
   shipattak5+shipattak6+shipattak7
   last34 = ds_grid_get(planetary,34,real(global.recup1))
   //if buildaffect2 = 2 {show_message(ds_grid_get(planetary,32,real(global.recup1)))}
   if ds_grid_get(planetary,34,real(global.recup1)) = global.idfixe 
   or ds_grid_get(planetary,32,real(global.recup1)) = global.idfixe  
   {//show_message(shipattak)
   ds_grid_set(planetary,52,real(global.recup1),shipattak)
   ds_grid_set(planetary,231,real(global.recup1),shipattak1)
   ds_grid_set(planetary,232,real(global.recup1),shipattak2)
   ds_grid_set(planetary,233,real(global.recup1),shipattak3)
   ds_grid_set(planetary,234,real(global.recup1),shipattak4)
   ds_grid_set(planetary,235,real(global.recup1),shipattak5)
   ds_grid_set(planetary,236,real(global.recup1),shipattak6)
   ds_grid_set(planetary,237,real(global.recup1),shipattak7)
   ds_grid_set(planetary,240,real(global.recup1),floor(sciencefltte))
   //RECEPTION FLOTTE ATK FIN
   
   }else{//show_message("nope")
   //SEUL LE PROPRIO CHANGE LA GUILD ET NAME DE LA PLANETE PAR RAPPORT A SON ID GUILD ET NAME
   //if ds_grid_get(planetary,32,real(global.recup1) = global.idfixe {
   //ds_grid_set(planetary,241,real(global.recup1),string(global.recup23))
   //ds_grid_set(planetary,242,real(global.recup1),real(global.recup24))
   //}
   }
}else{



//if 1 = 1 {//else{
//ds_grid_set(planetary,81,buildaffect2,date)

varget1 = ds_grid_get(planetary,32,buildaffect2)
//varget2 = ds_grid_get(planetary,81,buildaffect2)
//varget3 = ds_grid_get(planetary,34,buildaffect2)
varget4 = ds_grid_get(planetary,52,buildaffect2)
varget5 = ds_grid_get(planetary,40,buildaffect2) 

//EMPECHER UN JOUEUR ABSENT DE BLOQUER UNE PLANETE si absent proprio ET absent atakan ,blocage total
timerattrap = real(global.recup5)
  timerattrap = timerattrap/100000
nbrdejourdecar = date_day_span(date,timerattrap)


/*if nbrdejourdecar > 7 {//CHANGER D ATTAQUANT COMME CA LES GENS PEUVENT ATTAQUER DE NOUVEAU
ds_grid_set(planetary,34,buildaffect2,choose(2,3))
ds_grid_set(planetary,231,buildaffect2,floor((prochaineguerre/2)/5))
ds_grid_set(planetary,232,buildaffect2,floor((prochaineguerre/2)/10))
ds_grid_set(planetary,233,buildaffect2,floor((prochaineguerre/2)/20))
ds_grid_set(planetary,234,buildaffect2,floor((prochaineguerre/2)/50))
ds_grid_set(planetary,235,buildaffect2,floor((prochaineguerre/2)/100))
ds_grid_set(planetary,236,buildaffect2,floor((prochaineguerre/2)/200))
ds_grid_set(planetary,237,buildaffect2,floor((prochaineguerre/2)/300))
ds_grid_set(planetary,240,buildaffect2,floor(random_range(1,80)))
ds_grid_set(planetary,238,buildaffect2,0)
ds_grid_set(planetary,239,buildaffect2,0)
if ds_grid_get(planetary,32,buildaffect2) < 5 {
ds_grid_set(planetary,230,buildaffect2,0)}
}*/



if date > real(global.recup5)/100000 //&& ds_grid_get(planetary,32,buildaffect2) > 0 
{
if varget1 = global.idfixe or ds_grid_get(planetary,34,buildaffect2) = global.idfixe
or varget1 <= 5  {
//if buildaffect2 = 5 {show_message()}
//FAIRE LE RATTRAPAGE
  rattrapage = 0
  timerattrap = real(global.recup5)
  timerattrap = timerattrap/100000
  rattrapage = date_second_span(date,timerattrap)
  if rattrapage > 3600*24 {rattrapage = 3600*24}//MAX
  if ds_grid_get(planetary,204,buildaffect2) > 0 {//HP PLANET
  //rattrapage = 500
  if rattrapage > 5 {
   savedate = date 
//if rattrapage > 0 {
if varget1 > 0 {
//COMMERCE
//if ds_grid_get(planetary,32,buildaffect2) = global.idfixe{}else{
if ds_grid_get(planetary,39,buildaffect2) > 2 {
rattrapagevar = floor(((rattrapage*(1+  (ds_grid_get(planetary,43,buildaffect2)/10000) + (ds_grid_get(planetary,44,buildaffect2)/7000) + (ds_grid_get(planetary,45,buildaffect2)/5000) //VAISSEAU
 + (ds_grid_get(planetary,46,buildaffect2)/3000)  + (ds_grid_get(planetary,47,buildaffect2)/1000) //VAISSEAU
    ) )*100)*(1+(ds_grid_get(planetary,37,buildaffect2)/200)))//SCIENCE *2 pour 100
//if rattrapage > 60 {if buildaffect2 = 0 {scr_addinfo(rattrapagevar,1,buildaffect2)}}
ds_grid_add(planetary,35,buildaffect2,(rattrapagevar)*9)
ds_grid_add(planetary,90,buildaffect2,rattrapagevar)
ds_grid_add(planetary,91,buildaffect2,rattrapagevar)
ds_grid_add(planetary,92,buildaffect2,rattrapagevar)
ds_grid_add(planetary,93,buildaffect2,rattrapagevar)
ds_grid_add(planetary,94,buildaffect2,rattrapagevar)
ds_grid_add(planetary,95,buildaffect2,rattrapagevar)
ds_grid_add(planetary,96,buildaffect2,rattrapagevar)
ds_grid_add(planetary,97,buildaffect2,rattrapagevar)
ds_grid_add(planetary,98,buildaffect2,rattrapagevar)}//}

//Faire des vaisseau
//if buildaffect2 = 6 {show_message(rattrapage)}
//if varget1 = global.idfixe {show_message(floor(rattrapage/10))}
nbrshipbuild = 0

var if2
for (if2 = 0; if2 < floor(rattrapage/2); if2 += 1)
   {
priceship = 1
if varget5 > 5 {
 if varget5 < 10 {ds_grid_set(planetary,40,buildaffect2,10);varget5 = 10}
typechoose = 1
if varget5 > 20 {typechoose = 2}else
if varget5 > 40 {typechoose = 3}else
if varget5 > 60 {typechoose = 4}else
if varget5 > 80 {typechoose = 7}
pricecapital = typechoose
if typechoose > 4 {
if ds_grid_get(planetary,35,buildaffect2) >= floor(((priceship*(typechoose*50000))*typechoose)*pricecapital) {
}else{typechoose -= 1 ;}
pricecapital = typechoose
if ds_grid_get(planetary,35,buildaffect2) >= floor(((priceship*(typechoose*50000))*typechoose)*pricecapital) {
pricecapital = typechoose
}else{typechoose -= 1 }}
if typechoose > 5 {pricecapital = typechoose}else{pricecapital = 1}

 if ds_grid_get(planetary,35,buildaffect2) >= floor(((priceship*(typechoose*50000))*typechoose)*pricecapital) {
 if buildaffect2 = planetnowid {jaugevar2 = c_green;alarmjaugevar2 = 100}
ds_grid_add(planetary,42+typechoose,buildaffect2,1)
nbrshipbuild += 1 
ds_grid_add(planetary,35,buildaffect2,-(floor(((priceship*(typechoose*50000))*typechoose)*pricecapital)))
//ressourcevar = floor((((priceship*(typechoose*50000))*typechoose)*pricecapital)/9)
//ds_grid_add(planetary,35,buildaffect2,-(floor((priceship*(typechoose*50000))*typechoose)))
ressourcevar = floor(ds_grid_get(planetary,35,buildaffect2)/9)//floor(((priceship*(typechoose*50))/9))
if ressourcevar > 0 {}else{ressourcevar = 0}
ds_grid_set(planetary,90,buildaffect2,ressourcevar)
ds_grid_set(planetary,91,buildaffect2,ressourcevar)
ds_grid_set(planetary,92,buildaffect2,ressourcevar)
ds_grid_set(planetary,93,buildaffect2,ressourcevar)
ds_grid_set(planetary,94,buildaffect2,ressourcevar)
ds_grid_set(planetary,95,buildaffect2,ressourcevar)
ds_grid_set(planetary,96,buildaffect2,ressourcevar)
ds_grid_set(planetary,97,buildaffect2,ressourcevar)
ds_grid_set(planetary,98,buildaffect2,ressourcevar)
}else{if2 = rattrapage ;if buildaffect2 = planetnowid {jaugevar2 = c_red;alarmjaugevar2 = 100}}
}else{if2 = rattrapage;ds_grid_set(planetary,40,buildaffect2,0)}


if ds_grid_get(planetary,204,buildaffect2) > 0 {//HP PLANET

//ameliorer science
if ds_grid_get(planetary,41,buildaffect2) > 2  {
  if ds_grid_get(planetary,41,buildaffect2) < 10 {ds_grid_set(planetary,41,buildaffect2,10)}
  ressourcevar = floor(((ds_grid_get(planetary,37,buildaffect2)*1000)/9)*ds_grid_get(planetary,41,buildaffect2))
if ds_grid_get(planetary,37,buildaffect2) < 100 {
if ds_grid_get(planetary,35,buildaffect2) <= floor(((ds_grid_get(planetary,37,buildaffect2)*1000)/9)*ds_grid_get(planetary,41,buildaffect2)) {
if buildaffect2 = planetnowid {jaugevar3 = c_red ;alarmjaugevar3 = 100}}else{if buildaffect2 = planetnowid {jaugevar3 = c_green;alarmjaugevar3 = 100}
ds_grid_add(planetary,72,buildaffect2,ds_grid_get(planetary,41,buildaffect2)/1000)
ds_grid_add(planetary,73,buildaffect2,ds_grid_get(planetary,41,buildaffect2)/1000)
ds_grid_add(planetary,74,buildaffect2,ds_grid_get(planetary,41,buildaffect2)/1000)
ds_grid_add(planetary,75,buildaffect2,ds_grid_get(planetary,41,buildaffect2)/1000)


if ds_grid_get(planetary,90,buildaffect2) > ressourcevar{ds_grid_add(planetary,90,buildaffect2,-ressourcevar)}else{ds_grid_set(planetary,90,buildaffect2,0)}
if ds_grid_get(planetary,91,buildaffect2) > ressourcevar{ds_grid_add(planetary,91,buildaffect2,-ressourcevar)}else{ds_grid_set(planetary,91,buildaffect2,0)}
if ds_grid_get(planetary,92,buildaffect2) > ressourcevar{ds_grid_add(planetary,92,buildaffect2,-ressourcevar)}else{ds_grid_set(planetary,92,buildaffect2,0)}
if ds_grid_get(planetary,93,buildaffect2) > ressourcevar{ds_grid_add(planetary,93,buildaffect2,-ressourcevar)}else{ds_grid_set(planetary,93,buildaffect2,0)}
if ds_grid_get(planetary,94,buildaffect2) > ressourcevar{ds_grid_add(planetary,94,buildaffect2,-ressourcevar)}else{ds_grid_set(planetary,94,buildaffect2,0)}
if ds_grid_get(planetary,95,buildaffect2) > ressourcevar{ds_grid_add(planetary,95,buildaffect2,-ressourcevar)}else{ds_grid_set(planetary,95,buildaffect2,0)}
if ds_grid_get(planetary,96,buildaffect2) > ressourcevar{ds_grid_add(planetary,96,buildaffect2,-ressourcevar)}else{ds_grid_set(planetary,96,buildaffect2,0)}
if ds_grid_get(planetary,97,buildaffect2) > ressourcevar{ds_grid_add(planetary,97,buildaffect2,-ressourcevar)}else{ds_grid_set(planetary,97,buildaffect2,0)}
if ds_grid_get(planetary,98,buildaffect2) > ressourcevar{ds_grid_add(planetary,98,buildaffect2,-ressourcevar)}else{ds_grid_set(planetary,98,buildaffect2,0)}
}}}else{ds_grid_set(planetary,41,buildaffect2,0)}

pricestation = 100000//1000
//ameliorer defence
if ds_grid_get(planetary,42,buildaffect2) >= 10
 && ds_grid_get(planetary,35,buildaffect2) >= ((pricestation/10)*ds_grid_get(planetary,42,buildaffect2))//-((100-ds_grid_get(planetary,38,buildaffect2))*pricestation) 
 {
 
  //if ds_grid_get(planetary,42,buildaffect2) < 10 {ds_grid_set(planetary,42,buildaffect2,10)}
  
  price = ((pricestation/10)*ds_grid_get(planetary,42,buildaffect2))//(pricestation*ds_grid_get(planetary,42,buildaffect2))-((100-ds_grid_get(planetary,38,buildaffect2)*pricestation))
  //ds_grid_add(planetary,38,buildaffect2,floor(ds_grid_get(planetary,42,buildaffect2)/10))
  totalconstruct = ds_grid_get(planetary,42,buildaffect2)/4
  defconstruct = 0
  if ds_grid_get(planetary,61,buildaffect2) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,61,buildaffect2,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,62,buildaffect2) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,62,buildaffect2,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,63,buildaffect2) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,63,buildaffect2,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,64,buildaffect2) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,64,buildaffect2,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,65,buildaffect2) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,65,buildaffect2,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,66,buildaffect2) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,66,buildaffect2,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,67,buildaffect2) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,67,buildaffect2,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,68,buildaffect2) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,68,buildaffect2,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,69,buildaffect2) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,69,buildaffect2,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,70,buildaffect2) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,70,buildaffect2,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,280,buildaffect2) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,280,buildaffect2,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,281,buildaffect2) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,281,buildaffect2,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,282,buildaffect2) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,282,buildaffect2,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,283,buildaffect2) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,283,buildaffect2,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,284,buildaffect2) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,284,buildaffect2,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,285,buildaffect2) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,285,buildaffect2,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,286,buildaffect2) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,286,buildaffect2,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,287,buildaffect2) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,287,buildaffect2,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,288,buildaffect2) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,288,buildaffect2,1);totalconstruct -= 5;defconstruct += 1}
  if ds_grid_get(planetary,289,buildaffect2) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,289,buildaffect2,1);defconstruct += 1}
  
if ds_grid_get(planetary,38,buildaffect2) <= 100 {
//ds_grid_add(planetary,38,buildaffect2,defconstruct*10)
ressourcevar = floor((defconstruct*pricestation/10))
if ds_grid_get(planetary,90,buildaffect2) > ressourcevar{ds_grid_add(planetary,90,buildaffect2,-ressourcevar)}else{ds_grid_set(planetary,90,buildaffect2,0)}
if ds_grid_get(planetary,91,buildaffect2) > ressourcevar{ds_grid_add(planetary,91,buildaffect2,-ressourcevar)}else{ds_grid_set(planetary,91,buildaffect2,0)}
if ds_grid_get(planetary,92,buildaffect2) > ressourcevar{ds_grid_add(planetary,92,buildaffect2,-ressourcevar)}else{ds_grid_set(planetary,92,buildaffect2,0)}
if ds_grid_get(planetary,93,buildaffect2) > ressourcevar{ds_grid_add(planetary,93,buildaffect2,-ressourcevar)}else{ds_grid_set(planetary,93,buildaffect2,0)}
if ds_grid_get(planetary,94,buildaffect2) > ressourcevar{ds_grid_add(planetary,94,buildaffect2,-ressourcevar)}else{ds_grid_set(planetary,94,buildaffect2,0)}
if ds_grid_get(planetary,95,buildaffect2) > ressourcevar{ds_grid_add(planetary,95,buildaffect2,-ressourcevar)}else{ds_grid_set(planetary,95,buildaffect2,0)}
if ds_grid_get(planetary,96,buildaffect2) > ressourcevar{ds_grid_add(planetary,96,buildaffect2,-ressourcevar)}else{ds_grid_set(planetary,96,buildaffect2,0)}
if ds_grid_get(planetary,97,buildaffect2) > ressourcevar{ds_grid_add(planetary,97,buildaffect2,-ressourcevar)}else{ds_grid_set(planetary,97,buildaffect2,0)}
if ds_grid_get(planetary,98,buildaffect2) > ressourcevar{ds_grid_add(planetary,98,buildaffect2,-ressourcevar)}else{ds_grid_set(planetary,98,buildaffect2,0)}
}

}else{ds_grid_set(planetary,42,buildaffect2,0)}


if buildaffect2 = planetnowid {
if ds_grid_get(planetary,42,buildaffect2) >= 10 {
if ds_grid_get(planetary,35,buildaffect2) >= ((pricestation/10)*ds_grid_get(planetary,42,buildaffect2))
 {jaugevar4 = c_green;alarmjaugevar4 = 10}else{jaugevar4 = c_red;alarmjaugevar4 = 10}}}

okzone[0] = 0
okzone[1] = 0
okzone[2] = 0
okzone[3] = 0
okzone[4] = 0
okzone[5] = 0
okzone[6] = 0
okzone[7] = 0
okzone[8] = 0
okzone[9] = 0
okzone[10] = 0



}


}


//CONSTRUIRE DES TURRET MOON
if varget1 = global.idfixe {}else{
if ds_grid_get(planetary,211,buildaffect2) <= 0 && ds_grid_get(planetary,58,buildaffect2) > 0 {
ds_grid_add(planetary,211,buildaffect2,500);ds_grid_add(planetary,58,buildaffect2,-1);ds_grid_add(planetary,53,buildaffect2,-1)}else
if ds_grid_get(planetary,212,buildaffect2) <= 0 && ds_grid_get(planetary,58,buildaffect2) > 0  {
ds_grid_add(planetary,212,buildaffect2,500);ds_grid_add(planetary,58,buildaffect2,-1);ds_grid_add(planetary,53,buildaffect2,-1)}else
if ds_grid_get(planetary,213,buildaffect2) <= 0 && ds_grid_get(planetary,58,buildaffect2) > 0  {
ds_grid_add(planetary,213,buildaffect2,500);ds_grid_add(planetary,58,buildaffect2,-1);ds_grid_add(planetary,53,buildaffect2,-1)}else
if ds_grid_get(planetary,214,buildaffect2) <= 0 && ds_grid_get(planetary,58,buildaffect2) > 0  {
ds_grid_add(planetary,214,buildaffect2,500);ds_grid_add(planetary,58,buildaffect2,-1);ds_grid_add(planetary,53,buildaffect2,-1)}
}
   //RATRAPAGE BATAILLE
   shiploose = 0
   //if buildaffect2 = 6 {show_message(ds_grid_get(planetary,52,buildaffect2))}
   //if buildaffect2 = 6 {show_message(ds_grid_get(planetary,36,buildaffect2))}
   if ds_grid_get(planetary,52,buildaffect2) > 5 && ds_grid_get(planetary,36 ,buildaffect2) > 0 {
rattrapagevartimeattack = (floor(rattrapage/30))//-ds_grid_get(planetary,51,buildaffect2)
totalrattrapagevartimeattack = rattrapagevartimeattack



if ds_grid_get(planetary,51,buildaffect2) > 0 {//ALARMATTACK
//if buildaffect2 = 6 {show_message(-(floor(rattrapage/1)))}
varrattrap = -(floor(rattrapage/30))
ds_grid_add(planetary,51,buildaffect2,varrattrap)}

// if buildaffect2 = 6 {show_message(ds_grid_get(planetary,51,buildaffect2))}
//POUR QUAND JOUEUR DEFENSSEUR ABANDONNE UN FIGHT faire pop vaisseau
if ds_grid_get(planetary,32,buildaffect2) <= 0 && last34 >= 5 {
var i;
fois = 50
if ds_grid_get(planetary,36,buildaffect2) > 10 {fois = ds_grid_get(planetary,36,buildaffect2)}
if fois > 100 {fois = 100}
 for (i = 0; i < fois; i += 1)
    {
    with(instance_create(x,y,obj_shipcommerce)){
    fuyard = 1
colorshiprgb = ds_grid_get(obj_planetary.planetary,30,planetparent)
colorship = ds_grid_get(other.planetary,32,other.buildaffect2);enemy = 0
planetparent = other.buildaffect2
vardist = ds_grid_get(other.planetary,39,other.buildaffect2)
alarm[0] = (3000/(1+(ds_grid_get(other.planetary,74,other.buildaffect2)/100)))*(1+(20/50))
//returnsurbase = 
alarm[1] = alarm[0]+100
 vargetdsgrid[1] = ds_grid_get(obj_planetary.planetary,51,planetparent)
vargetdsgrid[2] = ds_grid_get(obj_planetary.planetary,34,planetparent)
vargetdsgrid[3] = ((ds_grid_get(obj_planetary.planetary,7,planetparent)/25)*obj_planetary.optiportabletaille)
vargetdsgrid[4] = ds_grid_get(obj_planetary.planetary,32,planetparent)

}
    }
}


if ds_grid_get(planetary,51,buildaffect2) < 0 {ds_grid_set(planetary,51,buildaffect2,0)}
if rattrapagevartimeattack > varget4 {rattrapagevartimeattack = varget4}
if ds_grid_get(planetary,51,buildaffect2) <= 0 {

//if buildaffect2 = 0 {show_message(rattrapagevartimeattack)}
//if ds_grid_get(planetary,43,buildaffect2) > 5-(ds_grid_get(planetary,52,buildaffect2)) {ds_grid_add(planetary,43,buildaffect2,floor(0-(rattrapagevartimeattack)))}else{ds_grid_set(planetary,43,buildaffect2,5)}
if rattrapagevartimeattack > 0 {
if (ds_grid_get(planetary,43,buildaffect2)-2) > rattrapagevartimeattack{//si plus de vaisseau que de ratrapage time attack
saverattrap = floor(rattrapagevartimeattack)
if ds_grid_get(planetary,52,buildaffect2) > 2 {timeattack = (ds_grid_get(planetary,43,buildaffect2)-2);ds_grid_add(planetary,52,buildaffect2,-saverattrap);rattrapagevartimeattack = 0;ds_grid_add(planetary,43,buildaffect2,-saverattrap);shiploose += floor(saverattrap)
}}else{shiploose += ds_grid_get(planetary,43,buildaffect2);rattrapagevartimeattack -= ds_grid_get(planetary,43,buildaffect2)-2;ds_grid_add(planetary,52,buildaffect2,-ds_grid_get(planetary,43,buildaffect2)-2);ds_grid_set(planetary,43,buildaffect2,2);}
}
if rattrapagevartimeattack > 0 {
if (ds_grid_get(planetary,44,buildaffect2)-2) > floor(rattrapagevartimeattack/10){//si plus de vaisseau que de ratrapage time attack
saverattrap =  floor(rattrapagevartimeattack/10)
if ds_grid_get(planetary,52,buildaffect2) > 2 {timeattack = (ds_grid_get(planetary,44,buildaffect2)-2);ds_grid_add(planetary,52,buildaffect2,-saverattrap);rattrapagevartimeattack = 0;ds_grid_add(planetary,44,buildaffect2,-saverattrap);shiploose += floor(saverattrap)
}}else{shiploose += ds_grid_get(planetary,44,buildaffect2);rattrapagevartimeattack -= ds_grid_get(planetary,44,buildaffect2)*10;ds_grid_add(planetary,52,buildaffect2,-ds_grid_get(planetary,44,buildaffect2));ds_grid_set(planetary,44,buildaffect2,2);}
}
if rattrapagevartimeattack > 0 {
if (ds_grid_get(planetary,45,buildaffect2)-1) > floor(rattrapagevartimeattack/20) && rattrapagevartimeattack > 2 {//si plus de vaisseau que de ratrapage time attack
saverattrap =  floor(rattrapagevartimeattack/20)
if ds_grid_get(planetary,52,buildaffect2) > 2 {timeattack = (ds_grid_get(planetary,45,buildaffect2)-1);ds_grid_add(planetary,52,buildaffect2,-saverattrap);rattrapagevartimeattack = 0;ds_grid_add(planetary,45,buildaffect2,-saverattrap);shiploose += floor(saverattrap)
}}else{shiploose += ds_grid_get(planetary,45,buildaffect2);rattrapagevartimeattack -= ds_grid_get(planetary,45,buildaffect2)*20;ds_grid_add(planetary,52,buildaffect2,-ds_grid_get(planetary,45,buildaffect2));ds_grid_set(planetary,45,buildaffect2,1);}
}
if rattrapagevartimeattack > 0 {
if (ds_grid_get(planetary,46,buildaffect2)-0) > floor(rattrapagevartimeattack/50) && rattrapagevartimeattack > 2  {//si plus de vaisseau que de ratrapage time attack
saverattrap =  floor(rattrapagevartimeattack/50)
if ds_grid_get(planetary,52,buildaffect2) > 2 {timeattack = (ds_grid_get(planetary,46,buildaffect2)-0);ds_grid_add(planetary,52,buildaffect2,-saverattrap);rattrapagevartimeattack = 0;ds_grid_add(planetary,46,buildaffect2,-saverattrap);shiploose += floor(saverattrap)
}}else{shiploose += ds_grid_get(planetary,46,buildaffect2);rattrapagevartimeattack -= ds_grid_get(planetary,46,buildaffect2)*50;ds_grid_add(planetary,52,buildaffect2,-ds_grid_get(planetary,46,buildaffect2));ds_grid_set(planetary,46,buildaffect2,0);}
}
if rattrapagevartimeattack > 0 {
if (ds_grid_get(planetary,47,buildaffect2)-0) > floor(rattrapagevartimeattack/100) && rattrapagevartimeattack > 2  {//si plus de vaisseau que de ratrapage time attack
saverattrap =  floor(rattrapagevartimeattack/100)
if ds_grid_get(planetary,52,buildaffect2) > 2 {timeattack = (ds_grid_get(planetary,47,buildaffect2)-0);ds_grid_add(planetary,52,buildaffect2,-saverattrap);rattrapagevartimeattack = 0;ds_grid_add(planetary,47,buildaffect2,-saverattrap);shiploose += floor(saverattrap)
}}else{shiploose += ds_grid_get(planetary,47,buildaffect2);rattrapagevartimeattack -= ds_grid_get(planetary,47,buildaffect2)*100;ds_grid_add(planetary,52,buildaffect2,-ds_grid_get(planetary,47,buildaffect2));ds_grid_set(planetary,47,buildaffect2,0);}
}
if rattrapagevartimeattack > 0 {
if (ds_grid_get(planetary,48,buildaffect2)-0) > floor(rattrapagevartimeattack/300) && rattrapagevartimeattack > 2  {//si plus de vaisseau que de ratrapage time attack
saverattrap =  floor(rattrapagevartimeattack/300)
if ds_grid_get(planetary,52,buildaffect2) > 2 {timeattack = (ds_grid_get(planetary,48,buildaffect2)-0);ds_grid_add(planetary,52,buildaffect2,-saverattrap);rattrapagevartimeattack = 0;ds_grid_add(planetary,48,buildaffect2,-saverattrap);shiploose += floor(saverattrap)
}}else{shiploose += ds_grid_get(planetary,48,buildaffect2);rattrapagevartimeattack -= ds_grid_get(planetary,48,buildaffect2)*300;ds_grid_add(planetary,52,buildaffect2,-ds_grid_get(planetary,48,buildaffect2));ds_grid_set(planetary,48,buildaffect2,0);}
}
if rattrapagevartimeattack > 0 {
if (ds_grid_get(planetary,49,buildaffect2)-0) > floor(rattrapagevartimeattack/400) && rattrapagevartimeattack > 2  {//si plus de vaisseau que de ratrapage time attack
saverattrap =  floor(rattrapagevartimeattack/400)
if ds_grid_get(planetary,52,buildaffect2) > 2 {timeattack = (ds_grid_get(planetary,49,buildaffect2)-0);ds_grid_add(planetary,52,buildaffect2,-saverattrap);rattrapagevartimeattack = 0 ;ds_grid_add(planetary,49,buildaffect2,-saverattrap);shiploose += floor(saverattrap)
}}else{shiploose += ds_grid_get(planetary,49,buildaffect2);rattrapagevartimeattack -= ds_grid_get(planetary,49,buildaffect2)*400;ds_grid_add(planetary,52,buildaffect2,-ds_grid_get(planetary,49,buildaffect2));ds_grid_set(planetary,49,buildaffect2,0);}
}

if rattrapagevartimeattack > 0 {ds_grid_add(planetary,38,buildaffect2,-rattrapagevartimeattack)//STATSdefense
}


//calculate vaisseau total
varship = ds_grid_get(planetary,43,buildaffect2)+
ds_grid_get(planetary,44,buildaffect2)+
ds_grid_get(planetary,45,buildaffect2)+
ds_grid_get(planetary,46,buildaffect2)+
ds_grid_get(planetary,47,buildaffect2)+
ds_grid_get(planetary,48,buildaffect2)+
ds_grid_get(planetary,49,buildaffect2)


ds_grid_set(planetary,36,buildaffect2,varship) 

//RATRAPAGE SHIP ATAKANT
totalrattrapagevartimeattack2 = totalrattrapagevartimeattack
if totalrattrapagevartimeattack2 > 0{
if ds_grid_get(planetary,231,buildaffect2) > totalrattrapagevartimeattack2 {ds_grid_add(planetary,231,buildaffect2,-totalrattrapagevartimeattack2);totalrattrapagevartimeattack2 = 0;}else{
totalrattrapagevartimeattack2 -= ds_grid_get(planetary,231,buildaffect2) ;ds_grid_set(planetary,231,buildaffect2,0)}}
if totalrattrapagevartimeattack2 > 0{
if ds_grid_get(planetary,232,buildaffect2) > floor(totalrattrapagevartimeattack2/10) {ds_grid_add(planetary,232,buildaffect2,-floor(totalrattrapagevartimeattack2/10));totalrattrapagevartimeattack2 = 0;}else{
totalrattrapagevartimeattack2 -= floor(ds_grid_get(planetary,232,buildaffect2)*10) ;ds_grid_set(planetary,232,buildaffect2,0)}}
if totalrattrapagevartimeattack2 > 0{
if ds_grid_get(planetary,233,buildaffect2) > floor(totalrattrapagevartimeattack2/20) {ds_grid_add(planetary,233,buildaffect2,-floor(totalrattrapagevartimeattack2/20));totalrattrapagevartimeattack2 = 0;}else{
totalrattrapagevartimeattack2 -= floor(ds_grid_get(planetary,233,buildaffect2)*20) ;ds_grid_set(planetary,233,buildaffect2,0)}}
if totalrattrapagevartimeattack2 > 0{
if ds_grid_get(planetary,234,buildaffect2) > floor(totalrattrapagevartimeattack2/50) {ds_grid_add(planetary,234,buildaffect2,-floor(totalrattrapagevartimeattack2/50));totalrattrapagevartimeattack2 = 0;}else{
totalrattrapagevartimeattack2 -= floor(ds_grid_get(planetary,234,buildaffect2)*50) ;ds_grid_set(planetary,234,buildaffect2,0)}}
if totalrattrapagevartimeattack2 > 0{
if ds_grid_get(planetary,235,buildaffect2) > floor(totalrattrapagevartimeattack2/100) {ds_grid_add(planetary,235,buildaffect2,-floor(totalrattrapagevartimeattack2/100));totalrattrapagevartimeattack2 = 0;}else{
totalrattrapagevartimeattack2 -= floor(ds_grid_get(planetary,235,buildaffect2)*100) ;ds_grid_set(planetary,235,buildaffect2,0)}}
if totalrattrapagevartimeattack2 > 0{
if ds_grid_get(planetary,236,buildaffect2) > floor(totalrattrapagevartimeattack2/300) {ds_grid_add(planetary,236,buildaffect2,-floor(totalrattrapagevartimeattack2/300));totalrattrapagevartimeattack2 = 0;}else{
totalrattrapagevartimeattack2 -= floor(ds_grid_get(planetary,236,buildaffect2)*300) ;ds_grid_set(planetary,236,buildaffect2,0)}}
if totalrattrapagevartimeattack2 > 0{
if ds_grid_get(planetary,237,buildaffect2) > floor(totalrattrapagevartimeattack2/400) {ds_grid_add(planetary,237,buildaffect2,-floor(totalrattrapagevartimeattack2/400));totalrattrapagevartimeattack2 = 0;}else{
totalrattrapagevartimeattack2 -= floor(ds_grid_get(planetary,237,buildaffect2)*400) ;ds_grid_set(planetary,237,buildaffect2,0)}}

}
if ds_grid_get(planetary,52,buildaffect2) < 2 {ds_grid_set(planetary,52,buildaffect2,2)}
//RATRAPAGE BATAILLE
///SUPRESSION DES SHIPS PLANET MERE SI ORIGINAIRE D ATTAQUE
if ds_grid_get(planetary,34,buildaffect2) = global.idfixe {
if ds_grid_get(planetary,43,0)-2 > totalrattrapagevartimeattack {ds_grid_add(planetary,43,0,-totalrattrapagevartimeattack);totalrattrapagevartimeattack = 0}else{totalrattrapagevartimeattack -= (ds_grid_get(planetary,43,0)-2);ds_grid_set(planetary,43,0,2);}
if ds_grid_get(planetary,44,0)-2 > totalrattrapagevartimeattack {ds_grid_add(planetary,43,0,-totalrattrapagevartimeattack);totalrattrapagevartimeattack = 0}else{totalrattrapagevartimeattack -= (ds_grid_get(planetary,43,0)-2);ds_grid_set(planetary,43,0,2);}
if ds_grid_get(planetary,45,0)-1 > totalrattrapagevartimeattack {ds_grid_add(planetary,43,0,-totalrattrapagevartimeattack);totalrattrapagevartimeattack = 0}else{totalrattrapagevartimeattack -= (ds_grid_get(planetary,43,0)-1);ds_grid_set(planetary,43,0,1);}
if ds_grid_get(planetary,46,0) > totalrattrapagevartimeattack {ds_grid_add(planetary,43,0,-totalrattrapagevartimeattack);totalrattrapagevartimeattack = 0}else{totalrattrapagevartimeattack -= (ds_grid_get(planetary,43,0));ds_grid_set(planetary,43,0,0);}
if ds_grid_get(planetary,47,0) > totalrattrapagevartimeattack {ds_grid_add(planetary,43,0,-totalrattrapagevartimeattack);totalrattrapagevartimeattack = 0}else{totalrattrapagevartimeattack -= (ds_grid_get(planetary,43,0));ds_grid_set(planetary,43,0,0);}

}
}
}

   }
   }
   //RATRAPAGE FINI
   ///REEQUILIBRER LES STATS PUIS SAUVEGARDER
   
if ds_grid_get(planetary,204,buildaffect2) > 0 {//HP PLANET
if ds_grid_get(planetary,36,buildaffect2) < 0 {ds_grid_set(planetary,36,buildaffect2,0)}//jamais avoir vaisseauen dessous de 0
varressource = ds_grid_get(planetary,90,buildaffect2)+
ds_grid_get(planetary,91,buildaffect2)+
ds_grid_get(planetary,92,buildaffect2)+
ds_grid_get(planetary,93,buildaffect2)+
ds_grid_get(planetary,94,buildaffect2)+
ds_grid_get(planetary,95,buildaffect2)+
ds_grid_get(planetary,96,buildaffect2)+
ds_grid_get(planetary,97,buildaffect2)+
ds_grid_get(planetary,98,buildaffect2)

ds_grid_set(planetary,35,buildaffect2,floor(varressource))


//calculate defence

varressource = (ds_grid_get(planetary,61,buildaffect2)*10)+
(ds_grid_get(planetary,62,buildaffect2)*5)+
(ds_grid_get(planetary,63,buildaffect2)*5)+
(ds_grid_get(planetary,64,buildaffect2)*5)+
(ds_grid_get(planetary,65,buildaffect2)*5)+
(ds_grid_get(planetary,66,buildaffect2)*5)+
(ds_grid_get(planetary,67,buildaffect2)*5)+
(ds_grid_get(planetary,68,buildaffect2)*5)+
(ds_grid_get(planetary,69,buildaffect2)*5)+
(ds_grid_get(planetary,70,buildaffect2)*5)+
(ds_grid_get(planetary,280,buildaffect2)*5)+
(ds_grid_get(planetary,281,buildaffect2)*5)+
(ds_grid_get(planetary,282,buildaffect2)*5)+
(ds_grid_get(planetary,283,buildaffect2)*5)+
(ds_grid_get(planetary,284,buildaffect2)*5)+
(ds_grid_get(planetary,285,buildaffect2)*5)+
(ds_grid_get(planetary,286,buildaffect2)*5)+
(ds_grid_get(planetary,287,buildaffect2)*5)+
(ds_grid_get(planetary,288,buildaffect2)*5)+
(ds_grid_get(planetary,289,buildaffect2)*5)

ds_grid_set(planetary,38,buildaffect2,floor(varressource))

//calculate SCIENCE





//calculate vaisseau total
varship = ds_grid_get(planetary,43,buildaffect2)+
ds_grid_get(planetary,44,buildaffect2)+
ds_grid_get(planetary,45,buildaffect2)+
ds_grid_get(planetary,46,buildaffect2)+
ds_grid_get(planetary,47,buildaffect2)+
ds_grid_get(planetary,48,buildaffect2)+
ds_grid_get(planetary,49,buildaffect2)


ds_grid_set(planetary,36,buildaffect2,varship) 

//changer les var stat a chaque buildaffect2 pour planet enemy
if varget1 < 5 {
//modechoosestat = choose(81)
stat1 = floor(random_range(20,82));
stat2 = floor(random_range(0,100-stat1));
stat3 = floor(random_range(0,100-stat1-stat2));
stat4 = floor(random_range(0,100-stat1-stat2-stat3));

ds_grid_set(planetary,39,buildaffect2,stat1)
ds_grid_set(planetary,40,buildaffect2,stat2)
ds_grid_set(planetary,41,buildaffect2,stat3)
ds_grid_set(planetary,42,buildaffect2,stat4)
}
prcntchange1 = floor(random_range(ds_grid_get(planetary,39,buildaffect2),100))
prcntchange2 = floor(random_range(ds_grid_get(planetary,40,buildaffect2),100))
prcntchange3 = floor(random_range(ds_grid_get(planetary,41,buildaffect2),100))
prcntchange4 = floor(random_range(ds_grid_get(planetary,42,buildaffect2),100))

//pas depasser 100 avec scientifique et defense
if ds_grid_get(planetary,37,buildaffect2) > 100 {ds_grid_set(planetary,37,buildaffect2,100)}
if ds_grid_get(planetary,38,buildaffect2) > 100 {ds_grid_set(planetary,38,buildaffect2,100)}

if prcntchange1 >= 99 && ds_grid_get(planetary,39,buildaffect2) > 5{ds_grid_set(planetary,ibuild,buildaffect2,choose(0,1,2,3,4,5,6,7,8,9)) }//INDUSTRY = ville
if prcntchange2 >= 99 && ds_grid_get(planetary,40,buildaffect2) > 5{ds_grid_set(planetary,ibuild,buildaffect2,choose(0,1,2,3,4,5,6,7,8,9)) }//SHIPS = ville
if prcntchange3 >= 99 && ds_grid_get(planetary,41,buildaffect2) > 5{ds_grid_set(planetary,ibuild,buildaffect2,choose(0,1,2,3,4,5,6,7,8,9)) }//SCIENTIST = ville
if prcntchange4 >= 99 && ds_grid_get(planetary,42,buildaffect2) > 5{ds_grid_set(planetary,ibuild,buildaffect2,choose(0,1,2,3,4,5,6,7,8,9)) }//DEFENCE = ville

if ds_grid_get(planetary,39,buildaffect2) < 5 && ds_grid_get(planetary,40,buildaffect2) < 5 
&& ds_grid_get(planetary,41,buildaffect2) < 5 && ds_grid_get(planetary,42,buildaffect2) < 5 {
if ds_grid_get(planetary,5,buildaffect2) = 1 {ds_grid_set(planetary,ibuild,buildaffect2,floor(random_range(10,29)))}
else{ds_grid_set(planetary,ibuild,buildaffect2,floor(random_range(20,29)))}
}
}

}
}
//}




//if real(global.recup1) = 0 or real(global.recup1) = "" or real(global.recup1) = "id." {}else{

rattrapage = 0
  timerattrap = real(global.recup5)
  timerattrap = timerattrap/100000
  rattrapage = date_second_span(date,timerattrap)
  if rattrapage > 3600*24 {rattrapage = 3600*24}

if rattrapage > 5 {




////si 32 = global.idfixe //ajouter le nombre de vaisseau détruis coter def et atk



//buildaffect2 = 6
if ds_grid_get(planetary,204,buildaffect2) > 0 {//life planet jcrois
if ds_grid_get(planetary,32,buildaffect2) = floor(global.idfixe) {
ds_grid_set(planetary,230,buildaffect2,global.name)}


//if date_current_datetime()*100000 > real(global.recup5) {
if ds_grid_get(planetary,32,buildaffect2) = global.idfixe or ds_grid_get(planetary,34,buildaffect2) = global.idfixe
or ds_grid_get(planetary,32,buildaffect2) < 5 or nbrdejourdecar > 7 {

ds_grid_set(planetary,81,buildaffect2,date_current_datetime()*100000)
if ds_grid_get(planetary,38,buildaffect2) <= 0 {
ds_grid_set(planetary,38,buildaffect2,0) 
}
var get1 = floor(ds_grid_get(planetary,51,buildaffect2))
//var get2 = floor(ds_grid_get(planetary,52,buildaffect2))
//ENVOI
   var get2 = 
   string(ds_grid_get(planetary,231,buildaffect2))+"$"+
   string(ds_grid_get(planetary,232,buildaffect2))+"$"+
   string(ds_grid_get(planetary,233,buildaffect2))+"$"+
   string(ds_grid_get(planetary,234,buildaffect2))+"$"+
   string(ds_grid_get(planetary,235,buildaffect2))+"$"+
   string(ds_grid_get(planetary,236,buildaffect2))+"$"+
   string(ds_grid_get(planetary,237,buildaffect2))+"$"+
   string(ds_grid_get(planetary,240,buildaffect2))
   
    
   
   //show_message(get2)
   
var get3 = floor(ds_grid_get(planetary,34,buildaffect2))
var get4 = floor(ds_grid_get(planetary,81,buildaffect2))
var get5 = floor(ds_grid_get(planetary,35,buildaffect2))
var get6 = floor(ds_grid_get(planetary,43,buildaffect2))
var get7 = floor(ds_grid_get(planetary,44,buildaffect2))
var get8 = floor(ds_grid_get(planetary,45,buildaffect2))
var get9 = floor(ds_grid_get(planetary,46,buildaffect2))
var get10 = floor(ds_grid_get(planetary,47,buildaffect2))
var get11 = floor(ds_grid_get(planetary,48,buildaffect2))
var get12 = floor(ds_grid_get(planetary,49,buildaffect2))
var get13 = floor(ds_grid_get(planetary,37,buildaffect2))
var get14 = floor(ds_grid_get(planetary,38,buildaffect2))

   scr_ecritureplanet(buildaffect2,
   get1,
   get2,
   get3,
   get4,
   //ds_grid_get(planetary,81,buildaffect2)*100000,//time
   get5,
   get6,
   get7,
   get8,
   get9,
   get10,
   get11,
   get12,
   get13,
   get14);
}
//}
}
rattrapage = 1
}
//}
}
}


#define scr_step

//planet de depart



window_set_cursor(cr_none);
cursor_sprite = sprite17;


if ds_grid_get(planetary,36,0) < 2 {ds_grid_set(planetary,36,0,2)
ds_grid_set(planetary,43,0,1)
ds_grid_set(planetary,44,0,1)
ds_grid_set(planetary,45,0,0)
ds_grid_set(planetary,46,0,0)
ds_grid_set(planetary,47,0,0)
}//jamais avoir vaisseau planet mere en dessous de 0

if surface_exists(obj_planetary.surf){global.surfok = 1}else{global.surfok = 0}

idplanet[1] = -1
idplanet[2] = -1
idplanet[3] = -1
idplanet[4] = -1
if instance_exists(obj_ship){
nbrdobjship = instance_number(obj_ship)
with(obj_ship){if suislepatron = 1 {
if other.idplanet[1] = -1 {other.idplanet[1] = planetparent }else
if other.idplanet[2] = -1 {if other.idplanet[1] = planetparent{}else{other.idplanet[2] = planetparent }}else
if other.idplanet[3] = -1 {if other.idplanet[1] = planetparent or other.idplanet[2] = planetparent {}else{other.idplanet[3] = planetparent }}else
if other.idplanet[4] = -1 {if other.idplanet[1] = planetparent or other.idplanet[2] = planetparent or other.idplanet[3] = planetparent {}else{other.idplanet[4] = planetparent }}
}}
}




randomangleorbit1 += 0.1
randomangleorbit2 += 0.1
randomangleorbit3 += 0.1
randomangleorbit4 += 0.1
randomangleorbit5 += 0.1
randomangleorbit6 += 0.1
randomangleorbit7 += 0.1
randomangleorbit8 += 0.1
randomangleorbit9 += 0.1
randomangleorbit10 += 0.1



//BUILD DEBUILD ECT
statvar1build = 0
statvar2build = 0
statvar3build = 0
statvar4build = 0

ibuild = floor(random_range(100,172))

//buildaffect = floor(random_range(0,200))//affecter ce nombre d'astre (grid y) a augmenter
if buildaffect < ds_grid_height(planetary)-1 {
buildaffect += 1 }else{buildaffect = 0}

if ds_grid_get(planetary,204,buildaffect) > 0 {//HP PLANET
if ds_grid_get(planetary,36,buildaffect) < 0 {ds_grid_set(planetary,36,buildaffect,0)}//jamais avoir vaisseauen dessous de 0


varressource = ds_grid_get(planetary,90,buildaffect)+
ds_grid_get(planetary,91,buildaffect)+
ds_grid_get(planetary,92,buildaffect)+
ds_grid_get(planetary,93,buildaffect)+
ds_grid_get(planetary,94,buildaffect)+
ds_grid_get(planetary,95,buildaffect)+
ds_grid_get(planetary,96,buildaffect)+
ds_grid_get(planetary,97,buildaffect)+
ds_grid_get(planetary,98,buildaffect)

ds_grid_set(planetary,35,buildaffect,floor(varressource))


//calculate defence

varressource = (ds_grid_get(planetary,61,buildaffect)*10)+
(ds_grid_get(planetary,62,buildaffect)*10)+
(ds_grid_get(planetary,63,buildaffect)*10)+
(ds_grid_get(planetary,64,buildaffect)*10)+
(ds_grid_get(planetary,65,buildaffect)*10)+
(ds_grid_get(planetary,66,buildaffect)*10)+
(ds_grid_get(planetary,67,buildaffect)*10)+
(ds_grid_get(planetary,68,buildaffect)*10)+
(ds_grid_get(planetary,69,buildaffect)*10)+
(ds_grid_get(planetary,70,buildaffect)*10)

ds_grid_set(planetary,38,buildaffect,floor(varressource))

//calculate SCIENCE
varscience = ds_grid_get(planetary,72,buildaffect)+
ds_grid_get(planetary,73,buildaffect)+
ds_grid_get(planetary,74,buildaffect)+
ds_grid_get(planetary,75,buildaffect)

ds_grid_set(planetary,37,buildaffect,varscience) 


//calculate vaisseau total
varship = ds_grid_get(planetary,43,buildaffect)+
ds_grid_get(planetary,44,buildaffect)+
ds_grid_get(planetary,45,buildaffect)+
ds_grid_get(planetary,46,buildaffect)+
ds_grid_get(planetary,47,buildaffect)+
ds_grid_get(planetary,48,buildaffect)+
ds_grid_get(planetary,49,buildaffect)


ds_grid_set(planetary,36,buildaffect,varship) 

varshipinflight = ds_grid_get(planetary,54,buildaffect)+
ds_grid_get(planetary,55,buildaffect)+
ds_grid_get(planetary,56,buildaffect)+
ds_grid_get(planetary,57,buildaffect)+
ds_grid_get(planetary,58,buildaffect)+
ds_grid_get(planetary,59,buildaffect)+
ds_grid_get(planetary,60,buildaffect)

ds_grid_set(planetary,53,buildaffect,varshipinflight)

//changer les var stat a chaque buildaffect pour planet enemy
if ds_grid_get(planetary,32,buildaffect) < 5 {
//modechoosestat = choose(81)
stat1 = floor(random_range(20,82));
stat2 = floor(random_range(0,100-stat1));
stat3 = floor(random_range(0,100-stat1-stat2));
stat4 = floor(random_range(0,100-stat1-stat2-stat3));

ds_grid_set(planetary,39,buildaffect,stat1)
ds_grid_set(planetary,40,buildaffect,stat2)
ds_grid_set(planetary,41,buildaffect,stat3)
ds_grid_set(planetary,42,buildaffect,stat4)
}


prcntchange1 = floor(random_range(ds_grid_get(planetary,39,buildaffect),100))
prcntchange2 = floor(random_range(ds_grid_get(planetary,40,buildaffect),100))
prcntchange3 = floor(random_range(ds_grid_get(planetary,41,buildaffect),100))
prcntchange4 = floor(random_range(ds_grid_get(planetary,42,buildaffect),100))

//pas depasser 100 avec scientifique et defense
if ds_grid_get(planetary,37,buildaffect) > 100 {ds_grid_set(planetary,37,buildaffect,100)}
if ds_grid_get(planetary,38,buildaffect) > 100 {ds_grid_set(planetary,38,buildaffect,100)}

if prcntchange1 >= 99 && ds_grid_get(planetary,39,buildaffect) > 5{ds_grid_set(planetary,ibuild,buildaffect,choose(0,1,2,3,4,5,6,7,8,9)) }//INDUSTRY = ville
if prcntchange2 >= 99 && ds_grid_get(planetary,40,buildaffect) > 5{ds_grid_set(planetary,ibuild,buildaffect,choose(0,1,2,3,4,5,6,7,8,9)) }//SHIPS = ville
if prcntchange3 >= 99 && ds_grid_get(planetary,41,buildaffect) > 5{ds_grid_set(planetary,ibuild,buildaffect,choose(0,1,2,3,4,5,6,7,8,9)) }//SCIENTIST = ville
if prcntchange4 >= 99 && ds_grid_get(planetary,42,buildaffect) > 5{ds_grid_set(planetary,ibuild,buildaffect,choose(0,1,2,3,4,5,6,7,8,9)) }//DEFENCE = ville

if ds_grid_get(planetary,39,buildaffect) < 5 && ds_grid_get(planetary,40,buildaffect) < 5 
&& ds_grid_get(planetary,41,buildaffect) < 5 && ds_grid_get(planetary,42,buildaffect) < 5 {
if ds_grid_get(planetary,5,buildaffect) = 1 {ds_grid_set(planetary,ibuild,buildaffect,floor(random_range(10,29)))}
else{ds_grid_set(planetary,ibuild,buildaffect,floor(random_range(20,29)))}
}
}

date = date_current_datetime()
//FAIRE LE RATTRAPAGE
  //if os_is_paused(){}else{
  rattrapage = 0
  rattrapage = date_second_span(date,ds_grid_get(planetary,81,buildaffect))
  //if rattrapage > 35 {rattrapage = 3600*24*31*6}//six mois
  if rattrapage > 3600*24*7 {rattrapage = 1*3600*24}//UNE semaine MAX

  if ds_grid_get(planetary,204,buildaffect) > 0 {//HP PLANET
  if rattrapage > 1 {
  //show_message("planet"+string(buildaffect))
  //show_message(date);
  //show_message(ds_grid_get(planetary,81,buildaffect));
  //rattrapage = floor(date-savedate)
   savedate = date 
   //show_message(rattrapage)
   
   //RATTRAPAGE DU TEMPS PERDU //commerce et create ship
if rattrapage > 0 {

//COLONISATION

if ds_grid_get(planetary,33,buildaffect) > 0 {//envoi du vaisseau
for (if4 = 0; if4 < rattrapage; if4 += 1)
   {
if ds_grid_get(planetary,33,buildaffect) > 5 {
ds_grid_add(planetary,33,buildaffect,-0.1)}else{if4 = rattrapage}}

if  ds_grid_get(planetary,33,buildaffect) < 6 {//TERRAFORMATION



createcolonisateur = 0
if instance_exists(obj_ship){with(obj_ship){
if colonisateur = 1 {other.createcolonisateur = 1}
}}
if createcolonisateur = 0 {
scr_addinfo(ds_grid_get(planetary,8,buildaffect),8,buildaffect)
with(instance_create(x,y,obj_ship)){
colonisateur = 1
mode = 5
type = 5
colorship = ds_grid_get(other.planetary,34,other.buildaffect)
enemy = global.idfixe
planetparent = other.buildaffect
vargetdsgrid[1] = ds_grid_get(obj_planetary.planetary,51,other.buildaffect)
vargetdsgrid[2] = ds_grid_get(obj_planetary.planetary,34,other.buildaffect)
vargetdsgrid[3] = (ds_grid_get(obj_planetary.planetary,7,other.buildaffect)/25)*other.optiportabletaille
vargetdsgrid[4] = ds_grid_get(obj_planetary.planetary,32,other.buildaffect)
//attaquant = 0
}
}
okterraformation = 1
for (if4 = 0; if4 < rattrapage; if4 += 1)
   {
if ds_grid_get(planetary,12,buildaffect) < 1012 {ds_grid_add(planetary,12,buildaffect,1);okterraformation = 0}//Surface pressure 1013.25 mbar
if ds_grid_get(planetary,14,buildaffect) < 123398 {ds_grid_add(planetary,14,buildaffect,1);okterraformation = 0}//Radiative power
if ds_grid_get(planetary,15,buildaffect) < 11 {ds_grid_add(planetary,15,buildaffect,0.1);okterraformation = 0}//Surface temperature 38 °c
if ds_grid_get(planetary,18,buildaffect) < 0.24 {ds_grid_add(planetary,18,buildaffect,0.01);okterraformation = 0}//Magnetic field 0.300 gauss
if ds_grid_get(planetary,19,buildaffect) < 3.9 {ds_grid_add(planetary,19,buildaffect,0.1);okterraformation = 0}//Magnetosphere 2.50 radius
if ds_grid_get(planetary,24,buildaffect) < 77 {ds_grid_add(planetary,24,buildaffect,0.1);okterraformation = 0}//air nitrogen
if ds_grid_get(planetary,25,buildaffect) < 20 {ds_grid_add(planetary,25,buildaffect,0.1);okterraformation = 0}//air oxygen
if ds_grid_get(planetary,26,buildaffect) < 0.9 {ds_grid_add(planetary,26,buildaffect,0.1);okterraformation = 0}//Air argon
if ds_grid_get(planetary,27,buildaffect) < 0.039 {ds_grid_add(planetary,27,buildaffect,0.01);okterraformation = 0}//Air Carbon dioxide

if ds_grid_get(planetary,12,buildaffect) > 1013 {ds_grid_add(planetary,12,buildaffect,-1);okterraformation = 0}//Surface pressure 1013.25 mbar
if ds_grid_get(planetary,14,buildaffect) > 123399 {ds_grid_add(planetary,14,buildaffect,-1);okterraformation = 0}//Radiative power
if ds_grid_get(planetary,15,buildaffect) > 12 {ds_grid_add(planetary,15,buildaffect,-0.1);okterraformation = 0}//Surface temperature 38 °c
if ds_grid_get(planetary,18,buildaffect) > 0.25 {ds_grid_add(planetary,18,buildaffect,-0.01);okterraformation = 0}//Magnetic field 0.300 gauss
if ds_grid_get(planetary,19,buildaffect) > 4 {ds_grid_add(planetary,19,buildaffect,-0.1);okterraformation = 0}//Magnetosphere 2.50 radius
if ds_grid_get(planetary,24,buildaffect) > 78 {ds_grid_add(planetary,24,buildaffect,-0.1);okterraformation = 0}//air nitrogen
if ds_grid_get(planetary,25,buildaffect) > 21 {ds_grid_add(planetary,25,buildaffect,-0.1);okterraformation = 0}//air oxygen
if ds_grid_get(planetary,26,buildaffect) > 1 {ds_grid_add(planetary,26,buildaffect,-0.1);okterraformation = 0}//Air argon
if ds_grid_get(planetary,27,buildaffect) > 0.04 {ds_grid_add(planetary,27,buildaffect,-0.01);okterraformation = 0}//Air Carbon dioxide
if okterraformation = 1 {if4 = rattrapage}
}
if okterraformation = 1 {
ds_grid_add(planetary,33,buildaffect,-1)
}
}
if ds_grid_get(planetary,33,buildaffect) < 2 {
scr_addinfo(ds_grid_get(planetary,8,buildaffect),6,buildaffect)
prochaineguerre = floor(random_range(50,400)*1)
ds_grid_set(planetary,51,buildaffect,prochaineguerre)//fin de guerre relancer tout
ds_grid_set(planetary,52,buildaffect,floor((prochaineguerre/2)/1))

ds_grid_set(planetary,33,buildaffect,0)
ds_grid_set(planetary,32,buildaffect,global.idfixe)
ds_grid_set(planetary,35,buildaffect,1000)
ds_grid_set(planetary,36,buildaffect,3)
ds_grid_add(planetary,43,buildaffect,3)//shiptype1nbr
ds_grid_add(planetary,44,buildaffect,0)//shiptype2nbr
ds_grid_add(planetary,45,buildaffect,0)//shiptype3nbr
ds_grid_add(planetary,46,buildaffect,0)//shiptype4nbr
ds_grid_add(planetary,47,buildaffect,0)//shiptype5nbr
ds_grid_add(planetary,48,buildaffect,0)//shiptype6nbr
ds_grid_add(planetary,49,buildaffect,0)//shiptype7nbr
ds_grid_set(planetary,37,buildaffect,0)
ds_grid_set(planetary,72,buildaffect,0)
ds_grid_set(planetary,73,buildaffect,0)
ds_grid_set(planetary,74,buildaffect,0)
ds_grid_set(planetary,75,buildaffect,0)
ds_grid_set(planetary,38,buildaffect,1)
ds_grid_add(planetary,34,buildaffect,choose(2,3))
}
}


if ds_grid_get(planetary,32,buildaffect) = global.idfixe {

}else{
if planetnowid = buildaffect {totalstats = 0}
stat1 = floor(choose(0,random_range(20,82)));
stat2 = floor(random_range(0,100-stat1));
stat3 = floor(choose(0,random_range(0,100-stat1-stat2)));
stat4 = floor(100-stat1-stat2-stat3);

ds_grid_set(planetary,39,buildaffect,stat1)
ds_grid_set(planetary,40,buildaffect,stat2)
ds_grid_set(planetary,41,buildaffect,stat3)
ds_grid_set(planetary,42,buildaffect,stat4)
    /*stat1 = floor(random_range(10,50))
    stat2 = floor(random_range(10,25))
    stat3 = floor(random_range(10,25))
    stat4 = 100-(stat1+stat2+stat3)
    ds_grid_set(planetary,39,buildaffect,stat1)//STATSressourcevar//JAUGE 40
    ds_grid_set(planetary,40,buildaffect,stat2)//STATSshipsvar//JAUGE 20
    ds_grid_set(planetary,41,buildaffect,stat3)//STATSscientifiquevar//JAUGE 30
    ds_grid_set(planetary,42,buildaffect,stat4)//STATSdefensevar//JAUGE 10
    */
   }
   
   
   

if ds_grid_get(planetary,32,buildaffect) > 0 {





///FIN COLONISATION


   //COMMERCE
if ds_grid_get(planetary,39,buildaffect) > 2 {
rattrapagevar = floor(((rattrapage*(1+  (ds_grid_get(planetary,43,buildaffect)/1000) + (ds_grid_get(planetary,44,buildaffect)/900) + (ds_grid_get(planetary,45,buildaffect)/700) //VAISSEAU
 + (ds_grid_get(planetary,46,buildaffect)/400)  + (ds_grid_get(planetary,47,buildaffect)/200) //VAISSEAU
    ) )*100)*(1+(ds_grid_get(planetary,37,buildaffect)/200)))//SCIENCE *2 pour 100
    
if rattrapage > 60 {if buildaffect = 0 {scr_addinfo(rattrapagevar,1,buildaffect)}}
//if buildaffect = 0 {show_message(rattrapagevar*9)}
ds_grid_add(planetary,35,buildaffect,(rattrapagevar)*9)
ds_grid_add(planetary,90,buildaffect,rattrapagevar)
ds_grid_add(planetary,91,buildaffect,rattrapagevar)
ds_grid_add(planetary,92,buildaffect,rattrapagevar)
ds_grid_add(planetary,93,buildaffect,rattrapagevar)
ds_grid_add(planetary,94,buildaffect,rattrapagevar)
ds_grid_add(planetary,95,buildaffect,rattrapagevar)
ds_grid_add(planetary,96,buildaffect,rattrapagevar)
ds_grid_add(planetary,97,buildaffect,rattrapagevar)
ds_grid_add(planetary,98,buildaffect,rattrapagevar)
}
//Faire des vaisseau
nbrshipbuild = 0
var if2
for (if2 = 0; if2 < rattrapage; if2 += 1)
   {
priceship = 1000
if ds_grid_get(planetary,40,buildaffect) > 5 {
 if ds_grid_get(planetary,40,buildaffect) < 10 {ds_grid_set(planetary,40,buildaffect,10)}
typechoose = 1
if ds_grid_get(planetary,40,buildaffect) > 20 {typechoose = 2}
if ds_grid_get(planetary,40,buildaffect) > 40 {typechoose = 3}
if ds_grid_get(planetary,40,buildaffect) > 60 {typechoose = 4}
if ds_grid_get(planetary,40,buildaffect) > 80 {typechoose = 5}
 if ds_grid_get(planetary,35,buildaffect) >= floor(((priceship*(typechoose*50)))*1) {
 if buildaffect = planetnowid {
 jaugevar2 = c_green
 alarmjaugevar2 = 100}
 //if buildaffect = 0 { show_message("1build")}
ds_grid_add(planetary,42+typechoose,buildaffect,1*1)
nbrshipbuild += 1 
ds_grid_add(planetary,35,buildaffect,-(floor(((priceship*(typechoose*50)))*1)))
ressourcevar = floor(((priceship*(typechoose*50))/9)*1)
if ds_grid_get(planetary,90,buildaffect) > ressourcevar{ds_grid_add(planetary,90,buildaffect,-(ressourcevar*1))}else{ds_grid_set(planetary,90,buildaffect,0)}
if ds_grid_get(planetary,91,buildaffect) > ressourcevar{ds_grid_add(planetary,91,buildaffect,-(ressourcevar*1))}else{ds_grid_set(planetary,91,buildaffect,0)}
if ds_grid_get(planetary,92,buildaffect) > ressourcevar{ds_grid_add(planetary,92,buildaffect,-(ressourcevar*1))}else{ds_grid_set(planetary,92,buildaffect,0)}
if ds_grid_get(planetary,93,buildaffect) > ressourcevar{ds_grid_add(planetary,93,buildaffect,-(ressourcevar*1))}else{ds_grid_set(planetary,93,buildaffect,0)}
if ds_grid_get(planetary,94,buildaffect) > ressourcevar{ds_grid_add(planetary,94,buildaffect,-(ressourcevar*1))}else{ds_grid_set(planetary,94,buildaffect,0)}
if ds_grid_get(planetary,95,buildaffect) > ressourcevar{ds_grid_add(planetary,95,buildaffect,-(ressourcevar*1))}else{ds_grid_set(planetary,95,buildaffect,0)}
if ds_grid_get(planetary,96,buildaffect) > ressourcevar{ds_grid_add(planetary,96,buildaffect,-(ressourcevar*1))}else{ds_grid_set(planetary,96,buildaffect,0)}
if ds_grid_get(planetary,97,buildaffect) > ressourcevar{ds_grid_add(planetary,97,buildaffect,-(ressourcevar*1))}else{ds_grid_set(planetary,97,buildaffect,0)}
if ds_grid_get(planetary,98,buildaffect) > ressourcevar{ds_grid_add(planetary,98,buildaffect,-(ressourcevar*1))}else{ds_grid_set(planetary,98,buildaffect,0)}
}else{if2 = rattrapage ;if buildaffect = planetnowid {jaugevar2 = c_red;alarmjaugevar2 = 100}}
}else{if2 = rattrapage;ds_grid_set(planetary,40,buildaffect,0)}
}

if rattrapage > 60 {if buildaffect = 0 {scr_addinfo(nbrshipbuild,2,buildaffect)}}
//CONSTRUIRE DES TURRET MOON
if ds_grid_get(planetary,32,buildaffect) = global.idfixe {}else{
if ds_grid_get(planetary,211,buildaffect) <= 0 && ds_grid_get(planetary,58,buildaffect) > 0 {
ds_grid_add(planetary,211,buildaffect,500);ds_grid_add(planetary,58,buildaffect,-1);ds_grid_add(planetary,53,buildaffect,-1)}else
if ds_grid_get(planetary,212,buildaffect) <= 0 && ds_grid_get(planetary,58,buildaffect) > 0  {
ds_grid_add(planetary,212,buildaffect,500);ds_grid_add(planetary,58,buildaffect,-1);ds_grid_add(planetary,53,buildaffect,-1)}else
if ds_grid_get(planetary,213,buildaffect) <= 0 && ds_grid_get(planetary,58,buildaffect) > 0  {
ds_grid_add(planetary,213,buildaffect,500);ds_grid_add(planetary,58,buildaffect,-1);ds_grid_add(planetary,53,buildaffect,-1)}else
if ds_grid_get(planetary,214,buildaffect) <= 0 && ds_grid_get(planetary,58,buildaffect) > 0  {
ds_grid_add(planetary,214,buildaffect,500);ds_grid_add(planetary,58,buildaffect,-1);ds_grid_add(planetary,53,buildaffect,-1)}
}


   //RATRAPAGE BATAILLE
   shiploose = 0
   if ds_grid_get(planetary,52,buildaffect) > 5 && ds_grid_get(planetary,36 ,buildaffect) > 5{
rattrapagevartimeattack = (floor(rattrapage/60))//-ds_grid_get(planetary,51,buildaffect)
totalrattrapagevartimeattack = rattrapagevartimeattack


if ds_grid_get(planetary,51,buildaffect) > 0 {//ALARMATTACK
ds_grid_add(planetary,51,buildaffect,0-(floor(rattrapage/100)))}

if ds_grid_get(planetary,51,buildaffect) < 0 {ds_grid_set(planetary,51,buildaffect,0)}
if rattrapagevartimeattack > ds_grid_get(planetary,52,buildaffect) {rattrapagevartimeattack = ds_grid_get(planetary,52,buildaffect)}
if ds_grid_get(planetary,51,buildaffect) <= 0 {
//if buildaffect = 0 {show_message(rattrapagevartimeattack)}
//if ds_grid_get(planetary,43,buildaffect) > 5-(ds_grid_get(planetary,52,buildaffect)) {ds_grid_add(planetary,43,buildaffect,floor(0-(rattrapagevartimeattack)))}else{ds_grid_set(planetary,43,buildaffect,5)}
if rattrapagevartimeattack > 0 {
if (ds_grid_get(planetary,43,buildaffect)-2) > rattrapagevartimeattack{//si plus de vaisseau que de ratrapage time attack
saverattrap = floor(rattrapagevartimeattack)
if ds_grid_get(planetary,52,buildaffect) > 2 {timeattack = (ds_grid_get(planetary,43,buildaffect)-2);ds_grid_add(planetary,52,buildaffect,-saverattrap);rattrapagevartimeattack -= saverattrap;ds_grid_add(planetary,43,buildaffect,-saverattrap);shiploose += floor(saverattrap)
}}else{shiploose += ds_grid_get(planetary,43,buildaffect);rattrapagevartimeattack -= ds_grid_get(planetary,43,buildaffect)-2;ds_grid_add(planetary,52,buildaffect,-ds_grid_get(planetary,43,buildaffect)-2);ds_grid_set(planetary,43,buildaffect,2);}
}
if rattrapagevartimeattack > 0 {
if (ds_grid_get(planetary,44,buildaffect)-2) > rattrapagevartimeattack {//si plus de vaisseau que de ratrapage time attack
saverattrap =  floor(rattrapagevartimeattack)
if ds_grid_get(planetary,52,buildaffect) > 2 {timeattack = (ds_grid_get(planetary,44,buildaffect)-2);ds_grid_add(planetary,52,buildaffect,-saverattrap);rattrapagevartimeattack -= saverattrap;ds_grid_add(planetary,44,buildaffect,-saverattrap);shiploose += floor(saverattrap)
}}else{shiploose += ds_grid_get(planetary,44,buildaffect);rattrapagevartimeattack -= ds_grid_get(planetary,44,buildaffect);ds_grid_add(planetary,52,buildaffect,-ds_grid_get(planetary,44,buildaffect));ds_grid_set(planetary,44,buildaffect,2);}
}
if rattrapagevartimeattack > 0 {
if (ds_grid_get(planetary,45,buildaffect)-1) > rattrapagevartimeattack && rattrapagevartimeattack > 2 {//si plus de vaisseau que de ratrapage time attack
saverattrap =  floor(rattrapagevartimeattack)
if ds_grid_get(planetary,52,buildaffect) > 2 {timeattack = (ds_grid_get(planetary,45,buildaffect)-1);ds_grid_add(planetary,52,buildaffect,-saverattrap);rattrapagevartimeattack -= saverattrap;ds_grid_add(planetary,45,buildaffect,-saverattrap);shiploose += floor(saverattrap)
}}else{shiploose += ds_grid_get(planetary,45,buildaffect);rattrapagevartimeattack -= ds_grid_get(planetary,45,buildaffect);ds_grid_add(planetary,52,buildaffect,-ds_grid_get(planetary,45,buildaffect));ds_grid_set(planetary,45,buildaffect,1);}
}
if rattrapagevartimeattack > 0 {
if (ds_grid_get(planetary,46,buildaffect)-0) > rattrapagevartimeattack && rattrapagevartimeattack > 2  {//si plus de vaisseau que de ratrapage time attack
saverattrap =  floor(rattrapagevartimeattack)
if ds_grid_get(planetary,52,buildaffect) > 2 {timeattack = (ds_grid_get(planetary,46,buildaffect)-0);ds_grid_add(planetary,52,buildaffect,-saverattrap);rattrapagevartimeattack -= saverattrap;ds_grid_add(planetary,46,buildaffect,-saverattrap);shiploose += floor(saverattrap)
}}else{shiploose += ds_grid_get(planetary,46,buildaffect);rattrapagevartimeattack -= ds_grid_get(planetary,46,buildaffect);ds_grid_add(planetary,52,buildaffect,-ds_grid_get(planetary,46,buildaffect));ds_grid_set(planetary,46,buildaffect,0);}
}
if rattrapagevartimeattack > 0 {
if (ds_grid_get(planetary,47,buildaffect)-0) > rattrapagevartimeattack && rattrapagevartimeattack > 2  {//si plus de vaisseau que de ratrapage time attack
saverattrap =  floor(rattrapagevartimeattack)
if ds_grid_get(planetary,52,buildaffect) > 2 {timeattack = (ds_grid_get(planetary,47,buildaffect)-0);ds_grid_add(planetary,52,buildaffect,-saverattrap);rattrapagevartimeattack -= saverattrap;ds_grid_add(planetary,47,buildaffect,-saverattrap);shiploose += floor(saverattrap)
}}else{shiploose += ds_grid_get(planetary,47,buildaffect);rattrapagevartimeattack -= ds_grid_get(planetary,47,buildaffect);ds_grid_add(planetary,52,buildaffect,-ds_grid_get(planetary,47,buildaffect));ds_grid_set(planetary,47,buildaffect,0);}
}

if rattrapagevartimeattack > 0 {ds_grid_add(planetary,38,buildaffect,-rattrapagevartimeattack)//STATSdefense
}
if ds_grid_get(planetary,38,buildaffect) < 0 {ds_grid_set(planetary,38,buildaffect,0)}

//calculate vaisseau total
varship = ds_grid_get(planetary,43,buildaffect)+
ds_grid_get(planetary,44,buildaffect)+
ds_grid_get(planetary,45,buildaffect)+
ds_grid_get(planetary,46,buildaffect)+
ds_grid_get(planetary,47,buildaffect)+
ds_grid_get(planetary,48,buildaffect)+
ds_grid_get(planetary,49,buildaffect)


ds_grid_set(planetary,36,buildaffect,varship) 

}
if ds_grid_get(planetary,52,buildaffect) < 2 {ds_grid_set(planetary,52,buildaffect,2)}
//RATRAPAGE BATAILLE
///SUPRESSION DES SHIPS PLANET MERE SI ORIGINAIRE D ATTAQUE
if ds_grid_get(planetary,34,buildaffect) = global.idfixe {
if ds_grid_get(planetary,43,0)-2 > totalrattrapagevartimeattack {ds_grid_add(planetary,43,0,-totalrattrapagevartimeattack);totalrattrapagevartimeattack = 0}else{totalrattrapagevartimeattack -= (ds_grid_get(planetary,43,0)-2);ds_grid_set(planetary,43,0,2);}
if ds_grid_get(planetary,44,0)-2 > totalrattrapagevartimeattack {ds_grid_add(planetary,43,0,-totalrattrapagevartimeattack);totalrattrapagevartimeattack = 0}else{totalrattrapagevartimeattack -= (ds_grid_get(planetary,43,0)-2);ds_grid_set(planetary,43,0,2);}
if ds_grid_get(planetary,45,0)-1 > totalrattrapagevartimeattack {ds_grid_add(planetary,43,0,-totalrattrapagevartimeattack);totalrattrapagevartimeattack = 0}else{totalrattrapagevartimeattack -= (ds_grid_get(planetary,43,0)-1);ds_grid_set(planetary,43,0,1);}
if ds_grid_get(planetary,46,0) > totalrattrapagevartimeattack {ds_grid_add(planetary,43,0,-totalrattrapagevartimeattack);totalrattrapagevartimeattack = 0}else{totalrattrapagevartimeattack -= (ds_grid_get(planetary,43,0));ds_grid_set(planetary,43,0,0);}
if ds_grid_get(planetary,47,0) > totalrattrapagevartimeattack {ds_grid_add(planetary,43,0,-totalrattrapagevartimeattack);totalrattrapagevartimeattack = 0}else{totalrattrapagevartimeattack -= (ds_grid_get(planetary,43,0));ds_grid_set(planetary,43,0,0);}

}
}


if rattrapage > 60 {if buildaffect = 0 && shiploose > 0 {scr_addinfo(shiploose,3,buildaffect)}}
/*if rattrapage > 240 {if buildaffect = 0 {show_message("Pendant votre absence vous avez perdu "+string(shiploose)+" vaisseau sur votre planète mère")}
if window_get_fullscreen()
      {}else{window_set_fullscreen(true);
      }}*/

}

rattrapage = 1
}
ds_grid_set(planetary,81,buildaffect,date_current_datetime())
   
   
   }
   
   
   //RATRAPAGE FINI
   
   
   //SCORE
   if buildaffect = 0 {
   scoreress += ds_grid_get(planetary,35,buildaffect)
   scoreships += ds_grid_get(planetary,36,buildaffect)
   scorescience += ds_grid_get(planetary,37,buildaffect)
   scoredef += ds_grid_get(planetary,38,buildaffect)
   scoreressvalid = scoreress
   scoreshipsvalid = scoreships
   scoresciencevalid = scorescience
   scoredefvalid = scoredef
   scoretotal = floor(1+(scoreressvalid/1000000))+floor(scoreshipsvalid)+floor(scoresciencevalid)+floor(scoredefvalid)
   scoreress = 0
   scoreships = 0
   scorescience = 0
   scoredef = 0
   //update_score("test"+string(irandom_range(1000,10000)),scoretotal,global.idfixe,scoreressvalid,scoreshipsvalid,scoresciencevalid,scoredefvalid);
   }else{
   if ds_grid_get(planetary,32,buildaffect) = global.idfixe {
   scoreress += ds_grid_get(planetary,35,buildaffect)
   scoreships += ds_grid_get(planetary,36,buildaffect)
   scorescience += ds_grid_get(planetary,37,buildaffect)
   scoredef += ds_grid_get(planetary,38,buildaffect)
   }
   }


//EVENT
if ds_grid_get(planetary,32,buildaffect) = global.idfixe {
if ds_grid_get(planetary,221,buildaffect) > 0 {
ds_grid_add(planetary,221,buildaffect,-1)
}else{
ds_grid_set(planetary,221,buildaffect,random_range(1,3))
ds_grid_set(planetary,217,buildaffect,random_range(1000,2500))//dist
ds_grid_set(planetary,218,buildaffect,random(360))
ds_grid_set(planetary,219,buildaffect,choose(1,2,3,4))
ds_grid_set(planetary,220,buildaffect,random_range(2,10))

}
}


if systemstellairenow = ds_grid_get(planetary,28,buildaffect) {
//show_message(systemstellairenow);
//ds_grid_set(planetary,81,buildaffect,date_current_datetime())

//COMMERCE ET MINAGE
//buildaffect
if ds_grid_get(planetary,39,buildaffect) > 2 {
if ds_grid_get(planetary,53,buildaffect) < 50 or buildaffect = planetnowid or buildaffect = 0 {
if ds_grid_get(planetary,39,buildaffect) < 20 {
ds_grid_set(planetary,39,buildaffect,20)}
ttalvarshipinspace = 0
/*if ds_grid_get(planetary,32,buildaffect) = 2 {
if instance_exists(obj_ship){
with(obj_ship){if planetparent = other.buildaffect {other.ttalvarshipinspace += 1}}}
}*/
repeat(choose(1,2,3)){
if ds_grid_get(planetary,36,buildaffect) > ds_grid_get(planetary,53,buildaffect) {
ds_grid_add(planetary,53,buildaffect,1)
//if buildaffect = 0 {show_message("test")}
with(instance_create(x,y,obj_shipcommerce)){
colorshiprgb = ds_grid_get(obj_planetary.planetary,30,planetparent)
colorship = ds_grid_get(other.planetary,32,other.buildaffect);enemy = 0
planetparent = other.buildaffect
vardist = ds_grid_get(other.planetary,39,other.buildaffect)
alarm[0] = (3000/(1+(ds_grid_get(other.planetary,74,other.buildaffect)/100)))*(1+(ds_grid_get(other.planetary,39,other.buildaffect)/50))
//returnsurbase = 
alarm[1] = alarm[0]/2
 vargetdsgrid[1] = ds_grid_get(obj_planetary.planetary,51,planetparent)
vargetdsgrid[2] = ds_grid_get(obj_planetary.planetary,34,planetparent)
vargetdsgrid[3] = ((ds_grid_get(obj_planetary.planetary,7,planetparent)/25)*obj_planetary.optiportabletaille)
vargetdsgrid[4] = ds_grid_get(obj_planetary.planetary,32,planetparent)

}}
}
//alarm[1] = 1000/ds_grid_get(planetary,39,planetnowid)/
}}else{ds_grid_set(planetary,39,buildaffect,0)}

//Faire des vaisseau
/*priceship = 1000
if ds_grid_get(planetary,40,buildaffect) > 2 {
 if ds_grid_get(planetary,40,buildaffect) < 10 {
ds_grid_set(planetary,40,buildaffect,10)}
typechoose = 1
if ds_grid_get(planetary,40,buildaffect) > 20 {typechoose = 2}
if ds_grid_get(planetary,40,buildaffect) > 40 {typechoose = 3}
if ds_grid_get(planetary,40,buildaffect) > 60 {typechoose = 4}
if ds_grid_get(planetary,40,buildaffect) > 80 {typechoose = 5}
 if ds_grid_get(planetary,35,buildaffect) >= floor(((priceship*(typechoose*10)))) {
ds_grid_add(planetary,42+typechoose,buildaffect,1)
ressourcevar = floor((priceship*(typechoose*10))/9)
if ds_grid_get(planetary,90,buildaffect) > ressourcevar{ds_grid_add(planetary,90,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,90,buildaffect,0)}
if ds_grid_get(planetary,91,buildaffect) > ressourcevar{ds_grid_add(planetary,91,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,91,buildaffect,0)}
if ds_grid_get(planetary,92,buildaffect) > ressourcevar{ds_grid_add(planetary,92,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,92,buildaffect,0)}
if ds_grid_get(planetary,93,buildaffect) > ressourcevar{ds_grid_add(planetary,93,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,93,buildaffect,0)}
if ds_grid_get(planetary,94,buildaffect) > ressourcevar{ds_grid_add(planetary,94,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,94,buildaffect,0)}
if ds_grid_get(planetary,95,buildaffect) > ressourcevar{ds_grid_add(planetary,95,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,95,buildaffect,0)}
if ds_grid_get(planetary,96,buildaffect) > ressourcevar{ds_grid_add(planetary,96,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,96,buildaffect,0)}
if ds_grid_get(planetary,97,buildaffect) > ressourcevar{ds_grid_add(planetary,97,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,97,buildaffect,0)}
if ds_grid_get(planetary,98,buildaffect) > ressourcevar{ds_grid_add(planetary,98,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,98,buildaffect,0)}
}
}*/


}else{


}

}//if ds_grid_get(planetary,204,buildaffect) > 0 {//HP PLANET




if ds_grid_get(planetary,204,buildaffect) > 0 {//HP PLANET

//ameliorer science
if ds_grid_get(planetary,41,buildaffect) > 2  {
  if ds_grid_get(planetary,41,buildaffect) < 10 {ds_grid_set(planetary,41,buildaffect,10)}
  ressourcevar = floor(((ds_grid_get(planetary,37,buildaffect)*100)/9)*ds_grid_get(planetary,41,buildaffect))
if ds_grid_get(planetary,37,buildaffect) < 100 {
if ds_grid_get(planetary,35,buildaffect) <= floor(((ds_grid_get(planetary,37,buildaffect)*100)/9)*ds_grid_get(planetary,41,buildaffect)) {
if buildaffect = planetnowid {jaugevar3 = c_red ;alarmjaugevar3 = 100}}else{if buildaffect = planetnowid {jaugevar3 = c_green;alarmjaugevar3 = 100}
ds_grid_add(planetary,72,buildaffect,ds_grid_get(planetary,41,buildaffect)/100)
ds_grid_add(planetary,73,buildaffect,ds_grid_get(planetary,41,buildaffect)/100)
ds_grid_add(planetary,74,buildaffect,ds_grid_get(planetary,41,buildaffect)/100)
ds_grid_add(planetary,75,buildaffect,ds_grid_get(planetary,41,buildaffect)/100)


if ds_grid_get(planetary,90,buildaffect) > ressourcevar{ds_grid_add(planetary,90,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,90,buildaffect,0)}
if ds_grid_get(planetary,91,buildaffect) > ressourcevar{ds_grid_add(planetary,91,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,91,buildaffect,0)}
if ds_grid_get(planetary,92,buildaffect) > ressourcevar{ds_grid_add(planetary,92,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,92,buildaffect,0)}
if ds_grid_get(planetary,93,buildaffect) > ressourcevar{ds_grid_add(planetary,93,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,93,buildaffect,0)}
if ds_grid_get(planetary,94,buildaffect) > ressourcevar{ds_grid_add(planetary,94,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,94,buildaffect,0)}
if ds_grid_get(planetary,95,buildaffect) > ressourcevar{ds_grid_add(planetary,95,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,95,buildaffect,0)}
if ds_grid_get(planetary,96,buildaffect) > ressourcevar{ds_grid_add(planetary,96,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,96,buildaffect,0)}
if ds_grid_get(planetary,97,buildaffect) > ressourcevar{ds_grid_add(planetary,97,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,97,buildaffect,0)}
if ds_grid_get(planetary,98,buildaffect) > ressourcevar{ds_grid_add(planetary,98,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,98,buildaffect,0)}
}}}else{ds_grid_set(planetary,41,buildaffect,0)}

pricestation = 100000//1000
//ameliorer defence
if ds_grid_get(planetary,42,buildaffect) >= 10
 && ds_grid_get(planetary,35,buildaffect) >= ((pricestation/10)*ds_grid_get(planetary,42,buildaffect))//-((100-ds_grid_get(planetary,38,buildaffect))*pricestation) 
 {
 
  //if ds_grid_get(planetary,42,buildaffect) < 10 {ds_grid_set(planetary,42,buildaffect,10)}
  
  price = ((pricestation/10)*ds_grid_get(planetary,42,buildaffect))//(pricestation*ds_grid_get(planetary,42,buildaffect))-((100-ds_grid_get(planetary,38,buildaffect)*pricestation))
  //ds_grid_add(planetary,38,buildaffect,floor(ds_grid_get(planetary,42,buildaffect)/10))
  totalconstruct = ds_grid_get(planetary,42,buildaffect)
  defconstruct = 0
  if ds_grid_get(planetary,61,buildaffect) = 0 && totalconstruct >= 10 {ds_grid_set(planetary,61,buildaffect,1);totalconstruct -= 10;defconstruct += 1}
  if ds_grid_get(planetary,62,buildaffect) = 0 && totalconstruct >= 10 {ds_grid_set(planetary,62,buildaffect,1);totalconstruct -= 10;defconstruct += 1}
  if ds_grid_get(planetary,63,buildaffect) = 0 && totalconstruct >= 10 {ds_grid_set(planetary,63,buildaffect,1);totalconstruct -= 10;defconstruct += 1}
  if ds_grid_get(planetary,64,buildaffect) = 0 && totalconstruct >= 10 {ds_grid_set(planetary,64,buildaffect,1);totalconstruct -= 10;defconstruct += 1}
  if ds_grid_get(planetary,65,buildaffect) = 0 && totalconstruct >= 10 {ds_grid_set(planetary,65,buildaffect,1);totalconstruct -= 10;defconstruct += 1}
  if ds_grid_get(planetary,66,buildaffect) = 0 && totalconstruct >= 10 {ds_grid_set(planetary,66,buildaffect,1);totalconstruct -= 10;defconstruct += 1}
  if ds_grid_get(planetary,67,buildaffect) = 0 && totalconstruct >= 10 {ds_grid_set(planetary,67,buildaffect,1);totalconstruct -= 10;defconstruct += 1}
  if ds_grid_get(planetary,68,buildaffect) = 0 && totalconstruct >= 10 {ds_grid_set(planetary,68,buildaffect,1);totalconstruct -= 10;defconstruct += 1}
  if ds_grid_get(planetary,69,buildaffect) = 0 && totalconstruct >= 10 {ds_grid_set(planetary,69,buildaffect,1);totalconstruct -= 10;defconstruct += 1}
  if ds_grid_get(planetary,70,buildaffect) = 0 && totalconstruct >= 10 {ds_grid_set(planetary,70,buildaffect,1);defconstruct += 1}
  
if ds_grid_get(planetary,38,buildaffect) <= 100 {
//ds_grid_add(planetary,38,buildaffect,defconstruct*10)
ressourcevar = floor((defconstruct*pricestation/10))
if ds_grid_get(planetary,90,buildaffect) > ressourcevar{ds_grid_add(planetary,90,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,90,buildaffect,0)}
if ds_grid_get(planetary,91,buildaffect) > ressourcevar{ds_grid_add(planetary,91,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,91,buildaffect,0)}
if ds_grid_get(planetary,92,buildaffect) > ressourcevar{ds_grid_add(planetary,92,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,92,buildaffect,0)}
if ds_grid_get(planetary,93,buildaffect) > ressourcevar{ds_grid_add(planetary,93,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,93,buildaffect,0)}
if ds_grid_get(planetary,94,buildaffect) > ressourcevar{ds_grid_add(planetary,94,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,94,buildaffect,0)}
if ds_grid_get(planetary,95,buildaffect) > ressourcevar{ds_grid_add(planetary,95,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,95,buildaffect,0)}
if ds_grid_get(planetary,96,buildaffect) > ressourcevar{ds_grid_add(planetary,96,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,96,buildaffect,0)}
if ds_grid_get(planetary,97,buildaffect) > ressourcevar{ds_grid_add(planetary,97,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,97,buildaffect,0)}
if ds_grid_get(planetary,98,buildaffect) > ressourcevar{ds_grid_add(planetary,98,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,98,buildaffect,0)}
}

}else{ds_grid_set(planetary,42,buildaffect,0)}
if buildaffect = planetnowid {
if ds_grid_get(planetary,42,buildaffect) >= 10 {
if ds_grid_get(planetary,35,buildaffect) >= ((pricestation/10)*ds_grid_get(planetary,42,buildaffect))
 {jaugevar4 = c_green;alarmjaugevar4 = 10}else{jaugevar4 = c_red;alarmjaugevar4 = 10}}}

okzone[0] = 0
okzone[1] = 0
okzone[2] = 0
okzone[3] = 0
okzone[4] = 0
okzone[5] = 0
okzone[6] = 0
okzone[7] = 0
okzone[8] = 0
okzone[9] = 0
okzone[10] = 0

if instance_exists(obj_defence) {with(obj_defence){
if enemy = ds_grid_get(other.planetary,32,planetparent) && planetparent = other.buildaffect {
other.okzone[zone] = 1;}
}}

   if ds_grid_get(planetary,61,buildaffect) = 1 && okzone[1] = 0 {
   with(instance_create(x,y,obj_defence)){planetparent = other.buildaffect;zone = 1;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,62,buildaffect) = 1 && okzone[2] = 0 {
   with(instance_create(x,y,obj_defence)){planetparent = other.buildaffect;zone = 2;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,63,buildaffect) = 1 && okzone[3] = 0 {
   with(instance_create(x,y,obj_defence)){planetparent = other.buildaffect;zone = 3;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,64,buildaffect) = 1 && okzone[4] = 0 {
   with(instance_create(x,y,obj_defence)){planetparent = other.buildaffect;zone = 4;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,65,buildaffect) = 1 && okzone[5] = 0 {
   with(instance_create(x,y,obj_defence)){planetparent = other.buildaffect;zone = 5;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,66,buildaffect) = 1 && okzone[6] = 0 {
   with(instance_create(x,y,obj_defence)){planetparent = other.buildaffect;zone = 6;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,67,buildaffect) = 1 && okzone[7] = 0 {
   with(instance_create(x,y,obj_defence)){planetparent = other.buildaffect;zone = 7;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,68,buildaffect) = 1 && okzone[8] = 0 {
   with(instance_create(x,y,obj_defence)){planetparent = other.buildaffect;zone = 8;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,69,buildaffect) = 1 && okzone[9] = 0 {
   with(instance_create(x,y,obj_defence)){planetparent = other.buildaffect;zone = 9;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,70,buildaffect) = 1 && okzone[10] = 0 {
   with(instance_create(x,y,obj_defence)){planetparent = other.buildaffect;zone = 10;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   

/*defnow = ds_grid_get(planetary,38,buildaffect)
defnowvar = floor(defnow/10)
if defnowvar = 1 {if ds_grid_get(planetary,60+defnowvar,buildaffect) = 0 {ds_grid_set(planetary,60+defnowvar,buildaffect,1)}}
if defnowvar = 2 {if ds_grid_get(planetary,60+defnowvar,buildaffect) = 0 {ds_grid_set(planetary,60+defnowvar,buildaffect,1)}}
if defnowvar = 3 {if ds_grid_get(planetary,60+defnowvar,buildaffect) = 0 {ds_grid_set(planetary,60+defnowvar,buildaffect,1)}}
if defnowvar = 4 {if ds_grid_get(planetary,60+defnowvar,buildaffect) = 0 {ds_grid_set(planetary,60+defnowvar,buildaffect,1)}}
if defnowvar = 5 {if ds_grid_get(planetary,60+defnowvar,buildaffect) = 0 {ds_grid_set(planetary,60+defnowvar,buildaffect,1)}}
if defnowvar = 6 {if ds_grid_get(planetary,60+defnowvar,buildaffect) = 0 {ds_grid_set(planetary,60+defnowvar,buildaffect,1)}}
if defnowvar = 7 {if ds_grid_get(planetary,60+defnowvar,buildaffect) = 0 {ds_grid_set(planetary,60+defnowvar,buildaffect,1)}}
if defnowvar = 8 {if ds_grid_get(planetary,60+defnowvar,buildaffect) = 0 {ds_grid_set(planetary,60+defnowvar,buildaffect,1)}}
if defnowvar = 9 {if ds_grid_get(planetary,60+defnowvar,buildaffect) = 0 {ds_grid_set(planetary,60+defnowvar,buildaffect,1)}}
if defnowvar = 10 {if ds_grid_get(planetary,60+defnowvar,buildaffect) = 0 {ds_grid_set(planetary,60+defnowvar,buildaffect,1)}}
*/


//BATAILLE

if ds_grid_get(planetary,51,buildaffect) > 0 {//ALARMATTACK
//si même defenseur qu'attaquant ,relancer
if ds_grid_get(planetary,34,buildaffect) = global.idfixe {if ds_grid_get(planetary,51,buildaffect) < 2 {ds_grid_add(planetary,51,buildaffect,-1)}
}else{
if ds_grid_get(planetary,51,buildaffect) < 2 {ds_grid_set(planetary,34,buildaffect,choose(2,3))
if ds_grid_get(planetary,32,buildaffect) = ds_grid_get(planetary,34,buildaffect)  {
//ds_grid_set(planetary,52,buildaffect,prochaineguerre)
ds_grid_set(planetary,34,buildaffect,choose(2,3))
ds_grid_set(planetary,51,buildaffect,1)
}else{ds_grid_set(planetary,51,buildaffect,0)}}
}

//EVITER BUG CHANGER D ATTAQUANT AU DERNIER MOMENT
if ds_grid_get(planetary,51,buildaffect) < 2 {}else{
ds_grid_add(planetary,51,buildaffect,-1)
}

if ds_grid_get(planetary,51,buildaffect) <= 0 {
blablafight = ds_grid_get(planetary,8,buildaffect)
scr_addinfo(blablafight,4,buildaffect)}

}else{
if ds_grid_get(planetary,32,buildaffect) = ds_grid_get(planetary,34,buildaffect)  {
ds_grid_set(planetary,34,buildaffect,choose(2,3))}

if ds_grid_get(planetary,52,buildaffect) > 0 {//TIME ATTACK
ds_grid_add(planetary,52,buildaffect,-1)

//ECHEC
if ds_grid_get(planetary,38,buildaffect) < 10 && 
ds_grid_get(planetary,36,buildaffect) <= 6 {

if ds_grid_get(planetary,204,buildaffect) <= 0 {}else{
if buildaffect = 0 {//si echec planet maire
//ds_grid_add(planetary,35,buildaffect,-(ds_grid_get(planetary,35,buildaffect)/2))

ressourcevar = floor((ds_grid_get(planetary,35,buildaffect)/2)/9)
if ds_grid_get(planetary,90,buildaffect) > 0{ds_grid_add(planetary,90,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,90,buildaffect,0)}
if ds_grid_get(planetary,91,buildaffect) > 0{ds_grid_add(planetary,91,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,91,buildaffect,0)}
if ds_grid_get(planetary,92,buildaffect) > 0{ds_grid_add(planetary,92,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,92,buildaffect,0)}
if ds_grid_get(planetary,93,buildaffect) > 0{ds_grid_add(planetary,93,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,93,buildaffect,0)}
if ds_grid_get(planetary,94,buildaffect) > 0{ds_grid_add(planetary,94,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,94,buildaffect,0)}
if ds_grid_get(planetary,95,buildaffect) > 0{ds_grid_add(planetary,95,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,95,buildaffect,0)}
if ds_grid_get(planetary,96,buildaffect) > 0{ds_grid_add(planetary,96,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,96,buildaffect,0)}
if ds_grid_get(planetary,97,buildaffect) > 0{ds_grid_add(planetary,97,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,97,buildaffect,0)}
if ds_grid_get(planetary,98,buildaffect) > 0{ds_grid_add(planetary,98,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,98,buildaffect,0)}

varhelpdie = choose(1,2)
prochaineguerre = floor(random_range(1000,5000)*varhelpdie)
ds_grid_set(planetary,51,buildaffect,prochaineguerre)//fin de guerre relancer tout
ds_grid_set(planetary,52,buildaffect,floor((prochaineguerre/2)/varhelpdie))
//ds_grid_set(planetary,34,buildaffect,choose(2,3))
ds_grid_set(planetary,36,buildaffect,5)//STATSships
ds_grid_set(planetary,43,buildaffect,2)//shiptype1nbr
ds_grid_set(planetary,44,buildaffect,2)//shiptype2nbr
ds_grid_set(planetary,45,buildaffect,1)//shiptype3nbr
ds_grid_set(planetary,46,buildaffect,0)//shiptype4nbr
ds_grid_set(planetary,47,buildaffect,0)//shiptype5nbr
ds_grid_set(planetary,48,buildaffect,0)//shiptype6nbr
ds_grid_set(planetary,49,buildaffect,0)//shiptype7nbr
ds_grid_set(planetary,38,buildaffect,2)//STATSdefense
ds_grid_set(planetary,72,buildaffect,ds_grid_get(planetary,72,buildaffect)/2)
ds_grid_set(planetary,73,buildaffect,ds_grid_get(planetary,72,buildaffect)/2)
ds_grid_set(planetary,74,buildaffect,ds_grid_get(planetary,72,buildaffect)/2)
ds_grid_set(planetary,75,buildaffect,ds_grid_get(planetary,72,buildaffect)/2)
ds_grid_add(planetary,53,buildaffect,0)//ttalvarshipinspace
ds_grid_add(planetary,54,buildaffect,0)//shiptype1flight
ds_grid_add(planetary,55,buildaffect,0)//shiptype2flight
ds_grid_add(planetary,56,buildaffect,0)//shiptype3flight
ds_grid_add(planetary,57,buildaffect,0)//shiptype4flight
ds_grid_add(planetary,58,buildaffect,0)//shiptype5flight
ds_grid_add(planetary,59,buildaffect,0)//shiptype6flight
ds_grid_add(planetary,60,buildaffect,0)//shiptype7flight


}else{//si echec colonie rend la planete libre


blablafight = ds_grid_get(planetary,8,buildaffect)
scr_addinfo(blablafight,5,buildaffect)

ds_grid_set(planetary,32,buildaffect,ds_grid_get(planetary,34,buildaffect))//COLONISER OU NON
//ds_grid_set(planetary,35,buildaffect,0)//STATSressource
ds_grid_set(planetary,36,buildaffect,5)//STATSships
ds_grid_set(planetary,43,buildaffect,2)//shiptype1nbr
ds_grid_set(planetary,44,buildaffect,2)//shiptype2nbr
ds_grid_set(planetary,45,buildaffect,1)//shiptype3nbr
ds_grid_set(planetary,46,buildaffect,0)//shiptype4nbr
ds_grid_set(planetary,47,buildaffect,0)//shiptype5nbr
ds_grid_set(planetary,48,buildaffect,0)//shiptype6nbr
ds_grid_set(planetary,49,buildaffect,0)//shiptype7nbr
ds_grid_set(planetary,37,buildaffect,0)//STATSscientifique
ds_grid_set(planetary,72,buildaffect,0)
ds_grid_set(planetary,73,buildaffect,0)
ds_grid_set(planetary,74,buildaffect,0)
ds_grid_set(planetary,75,buildaffect,0)
ds_grid_set(planetary,38,buildaffect,2)//STATSdefense
ds_grid_add(planetary,53,buildaffect,0)//ttalvarshipinspace
ds_grid_add(planetary,54,buildaffect,0)//shiptype1flight
ds_grid_add(planetary,55,buildaffect,0)//shiptype2flight
ds_grid_add(planetary,56,buildaffect,0)//shiptype3flight
ds_grid_add(planetary,57,buildaffect,0)//shiptype4flight
ds_grid_add(planetary,58,buildaffect,0)//shiptype5flight
ds_grid_add(planetary,59,buildaffect,0)//shiptype6flight
ds_grid_add(planetary,60,buildaffect,0)//shiptype7flight
/*ds_grid_set(planetary,39,buildaffect,5000)//STATSressourcevar//JAUGE 
ds_grid_set(planetary,40,buildaffect,0)//STATSshipsvar//JAUGE 
ds_grid_set(planetary,41,buildaffect,0)//STATSscientifiquevar//JAUGE 
ds_grid_set(planetary,42,buildaffect,0)//STATSdefensevar//JAUGE 
*/
stat1 = floor(random_range(10,50))
stat2 = floor(random_range(10,25))
stat3 = floor(random_range(10,25))
stat4 = 100-(stat1+stat2+stat3)
ds_grid_set(planetary,39,buildaffect,stat1)//STATSressourcevar//JAUGE 40
ds_grid_set(planetary,40,buildaffect,stat2)//STATSshipsvar//JAUGE 20
ds_grid_set(planetary,41,buildaffect,stat3)//STATSscientifiquevar//JAUGE 30
ds_grid_set(planetary,42,buildaffect,stat4)//STATSdefensevar//JAUGE 10
varhelpdie = choose(1,2)
prochaineguerre = floor(random_range(50,1000)*varhelpdie)
ds_grid_set(planetary,51,buildaffect,prochaineguerre)//fin de guerre relancer tout
ds_grid_set(planetary,52,buildaffect,floor((prochaineguerre/2)/varhelpdie))
//ds_grid_set(planetary,34,buildaffect,choose(2,3))
}
}
//FIN ECHEC
}else{



//sinon continuer la guerre
repeatnbr = choose(5,10,15,20)

if repeatnbr > ds_grid_get(planetary,52,buildaffect) {
repeatnbr = ds_grid_get(planetary,52,buildaffect)
}

if systemstellairenow = ds_grid_get(planetary,28,buildaffect) {}else{
popoupo = floor(random_range(1,50))
if popoupo = 1 {}else{repeatnbr = 0}
}

//ds_grid_add(planetary,52,buildaffect,-1)
if repeatnbr > 0 {
repeat(repeatnbr){

okcreate = 1
modeship = choose(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,3,4,5)
if ds_grid_get(planetary,34,buildaffect) = global.idfixe {//JOUEUR ATTAQUANT CHERCHER SI SHIP EXIST
modeship1 = 1
modeship2 = 1
modeship3 = 1
modeship4 = 1
modeship5 = 1
if ds_grid_get(planetary,54,0) < ds_grid_get(planetary,43,0) && ds_grid_get(planetary,43,0) > 2 {modeship1 = 1}
if ds_grid_get(planetary,55,0) < ds_grid_get(planetary,44,0) && ds_grid_get(planetary,44,0) > 2  {modeship2 = 2}
if ds_grid_get(planetary,56,0) < ds_grid_get(planetary,45,0) && ds_grid_get(planetary,45,0) > 1  {modeship3 = 3}
if ds_grid_get(planetary,57,0) < ds_grid_get(planetary,46,0) && ds_grid_get(planetary,46,0) > 0  {modeship4 = 4}
if ds_grid_get(planetary,58,0) < ds_grid_get(planetary,47,0) && ds_grid_get(planetary,47,0) > 0  {modeship5 = 5}
modeship = choose(modeship1,modeship2,modeship3,modeship4,modeship5)
if ds_grid_get(planetary,53+modeship,0) < ds_grid_get(planetary,42+modeship,0) {}else{okcreate = 0}}//FIN JOUEUR ATTAQUANT CHERCHER SI SHIP EXIST


if okcreate = 1 {
with(instance_create(x,y,obj_ship)){
createtp = 1
mode = other.modeship
colorship = ds_grid_get(other.planetary,34,other.buildaffect)
enemy = ds_grid_get(obj_planetary.planetary,34,other.buildaffect)
planetparent = other.buildaffect
vargetdsgrid[1] = ds_grid_get(obj_planetary.planetary,51,other.buildaffect)
vargetdsgrid[2] = ds_grid_get(obj_planetary.planetary,34,other.buildaffect)
vargetdsgrid[3] = (ds_grid_get(obj_planetary.planetary,7,other.buildaffect)/25)*other.optiportabletaille
vargetdsgrid[4] = ds_grid_get(obj_planetary.planetary,32,other.buildaffect)
//attaquant = 0
}}}


repeat(repeatnbr){//DEFENSEUR
if ds_grid_get(planetary,36,buildaffect) > ds_grid_get(planetary,53,buildaffect) {

modeship1 = 1
modeship2 = 1
modeship3 = 1
modeship4 = 1
modeship5 = 1
if ds_grid_get(planetary,54,buildaffect) < ds_grid_get(planetary,43,buildaffect) && ds_grid_get(planetary,43,buildaffect) > 2  {modeship1 = 1}
if ds_grid_get(planetary,55,buildaffect) < ds_grid_get(planetary,44,buildaffect) && ds_grid_get(planetary,44,buildaffect) > 2  {modeship2 = 2}
if ds_grid_get(planetary,56,buildaffect) < ds_grid_get(planetary,45,buildaffect) && ds_grid_get(planetary,45,buildaffect) > 1  {modeship3 = 3}
if ds_grid_get(planetary,57,buildaffect) < ds_grid_get(planetary,46,buildaffect) && ds_grid_get(planetary,46,buildaffect) > 0  {modeship4 = 4}
if ds_grid_get(planetary,58,buildaffect) < ds_grid_get(planetary,47,buildaffect) && ds_grid_get(planetary,47,buildaffect) > 0  {modeship5 = 5}

modeship = choose(modeship1,modeship2,modeship3,modeship4,modeship5)
//ds_grid_add(planetary,53,buildaffect,1)
if modeship > 0 {
if ds_grid_get(planetary,53+modeship,buildaffect) < 
ds_grid_get(planetary,42+modeship,buildaffect) {//vaisseau allie
with(instance_create(x,y,obj_ship)){
mode = other.modeship
colorship = ds_grid_get(other.planetary,32,other.buildaffect)
enemy = ds_grid_get(obj_planetary.planetary,32,other.buildaffect);
planetparent = other.buildaffect
rotaaleatdecol = random(360)
xx = room_width/2+lengthdir_x((ds_grid_get(obj_planetary.planetary,7,other.planetnowid)/25)*other.optiportabletaille,rotaaleatdecol)
yy = room_height/2+lengthdir_y((ds_grid_get(obj_planetary.planetary,7,other.planetnowid)/25)*other.optiportabletaille,rotaaleatdecol)
vargetdsgrid[1] = ds_grid_get(obj_planetary.planetary,51,other.buildaffect)
vargetdsgrid[2] = ds_grid_get(obj_planetary.planetary,34,other.buildaffect)
vargetdsgrid[3] = (ds_grid_get(obj_planetary.planetary,7,other.buildaffect)/25)*other.optiportabletaille
vargetdsgrid[4] = ds_grid_get(obj_planetary.planetary,32,other.buildaffect)
}}}
}}//}
}

}
}else{

prochaineguerre = floor(random_range(50,4000))
ds_grid_set(planetary,51,buildaffect,prochaineguerre)//fin de guerre relancer tout
ds_grid_set(planetary,52,buildaffect,prochaineguerre/2)

}

}



}//if ds_grid_get(planetary,204,buildaffect) > 0 {//HP PLANET

if ds_grid_get(planetary,204,buildaffect) <= 0 {//SI HP PLANET alors supprimer toute possession
ds_grid_set(planetary,32,buildaffect,0)
ds_grid_set(planetary,43,buildaffect,0)//shiptype1nbr
ds_grid_set(planetary,44,buildaffect,0)//shiptype2nbr
ds_grid_set(planetary,45,buildaffect,0)//shiptype3nbr
ds_grid_set(planetary,35,buildaffect,0)//STATSressource
ds_grid_set(planetary,36,buildaffect,0)//STATSships
ds_grid_set(planetary,37,buildaffect,0)//STATSscientifique
ds_grid_set(planetary,38,buildaffect,0)//STATSdefense
ds_grid_set(planetary,39,buildaffect,0)//STATSressourcevar//JAUGE 40
ds_grid_set(planetary,40,buildaffect,0)//STATSshipsvar//JAUGE 20
ds_grid_set(planetary,41,buildaffect,0)//STATSscientifiquevar//JAUGE 30
ds_grid_set(planetary,42,buildaffect,0)//STATSdefensevar//JAUGE 10

}

if alarm[4] < 0 {
//envoi de troupe dans l'atmo si ship libre encore ,et pour durer de 1000 step en rotation

if device_mouse_check_button_released(0, mb_left) && point_distance(xxmousebase, yymousebase, xxmousefin, yymousefin) < 30 {
xxmouse = device_mouse_x(0);
yymouse = device_mouse_y(0);

notroupe = 0
if instance_exists(obj_ship){
with(obj_ship){if suislepatron = 1 {other.notroupe = 1}}}


if point_distance(room_width/2,room_height/2,xxmouse,yymouse) < (ds_grid_get(obj_planetary.planetary,7,planetnowid)/25)*optiportabletaille && menuplanet = 0 && notroupe = 0 && echelle = 0{


var iff;
for (iff = 0; iff < 6; iff += 1)
   {
   randomize();
if ds_grid_get(planetary,36,planetnowid) > ds_grid_get(planetary,53,planetnowid) &&
ds_grid_get(planetary,32,planetnowid) = global.idfixe {

//modeship = choose(1,2,3,4,5)
modeship = 1
if iff = 1 or iff = 2 {nbrvar = 2}else
if iff = 3 {nbrvar = 1}else
{nbrvar = 0}
if ds_grid_get(planetary,53+iff,planetnowid) < ds_grid_get(planetary,42+iff,planetnowid)  && ds_grid_get(planetary,42+iff,planetnowid) > nbrvar  {modeship = iff}
/*if ds_grid_get(planetary,55,buildaffect) < ds_grid_get(planetary,44,0) && ds_grid_get(planetary,44,0) > 0 {modeship2 = 2}
if ds_grid_get(planetary,56,buildaffect) < ds_grid_get(planetary,45,0) && ds_grid_get(planetary,45,0) > 0  {modeship3 = 3}
if ds_grid_get(planetary,57,buildaffect) < ds_grid_get(planetary,46,0) && ds_grid_get(planetary,46,0) > 0  {modeship4 = 4}
if ds_grid_get(planetary,58,buildaffect) < ds_grid_get(planetary,47,0) && ds_grid_get(planetary,47,0) > 0  {modeship5 = 5}*/
//if modeship5 > 1 &&  modeship4 > 1  {modeship = choose(modeship5,modeship4)}



okcreate = 0
if ds_grid_get(planetary,53+modeship,planetnowid) < ds_grid_get(planetary,42+modeship,planetnowid) {okcreate = 1}
//if ds_grid_get(planetary,36,buildaffect) > 1 {//vaisseau allie
if okcreate = 1 {
//ds_grid_add(planetary,53,planetnowid,1) 
with(instance_create(x,y,obj_ship)){
mode = other.modeship
alarm[6] = 3000
colorship = ds_grid_get(other.planetary,32,other.planetnowid)
enemy = ds_grid_get(obj_planetary.planetary,32,other.planetnowid);
stationaire = 1
planetparent = other.planetnowid
rotaaleatdecol = random(360)
xx = room_width/2+lengthdir_x((ds_grid_get(obj_planetary.planetary,7,other.planetnowid)/25)*other.optiportabletaille,rotaaleatdecol)
yy = room_height/2+lengthdir_y((ds_grid_get(obj_planetary.planetary,7,other.planetnowid)/25)*other.optiportabletaille,rotaaleatdecol)
vargetdsgrid[1] = ds_grid_get(obj_planetary.planetary,51,other.planetnowid)
vargetdsgrid[2] = ds_grid_get(obj_planetary.planetary,34,other.planetnowid)
vargetdsgrid[3] = (ds_grid_get(obj_planetary.planetary,7,other.planetnowid)/25)*other.optiportabletaille
vargetdsgrid[4] = ds_grid_get(obj_planetary.planetary,32,other.planetnowid)
}}
}else{iff = 10}
}
}
}


//selectioner des ship et enregistrer


xxmousefin = 0
yymousefin = 0
if device_mouse_check_button_pressed(0, mb_left) {
xxmousebase = device_mouse_x(0);
yymousebase = device_mouse_y(0);
}



if device_mouse_check_button_released(0, mb_left) {
if alarm[3] < 0 {alarm[3] = 20}else{doubletap = 1}
xxmousefin = device_mouse_x(0);
yymousefin = device_mouse_y(0);
if point_distance(xxmousebase, yymousebase, xxmousefin, yymousefin) < 30 {
//ENVOYER SUR CIBLE SI PLANETNOW = PARENT
if instance_exists(obj_ship){
with(obj_ship){if suislepatron = 1 && planetparent = obj_planetary.planetnowid 
&& obj_planetary.menuplanet = 0 && obj_planetary.echelle = 0 {
if other.yymousefin > room_height/10 && other.yymousefin < room_height-(room_height/10) && 
other.xxmousefin > room_width/10 && other.xxmousefin < room_width-room_width/10 {
vardist2 = point_distance(xxcursor,yycursor,room_width/2,room_height/2)
//if vardist2 > ((ds_grid_get(obj_planetary.planetary,7,planetparent)/25)*obj_planetary.optiportabletaille)+100 &&
//vardist2 < ((ds_grid_get(obj_planetary.planetary,7,planetparent)/25)*obj_planetary.optiportabletaille)+550 {

xxcursor = other.xxmousefin
yycursor = other.yymousefin
}
//show_message(xxcursor)
}}}//}

xxmousefin = 0
yymousefin = 0
xxmousebase = 0
yymousebase = 0
}
}

//double tap pour enlever tout les vaisseau
if echelle = 0 && menuplanet = 0 {
if doubletap = 1 {
if instance_exists(obj_ship){with(obj_ship){//si trop proche enlever le patron des ship de la planete actuel
//if planetparent = other.planetnowid { 
if suislepatron = 1 {suislepatron = 0}//}
}}doubletap = 0}}


if xxmousefin = 0 {}else{
if xxmousefin < xxmousebase {xxmousefin2 = xxmousefin;xxmousefin = xxmousebase;xxmousebase = xxmousefin2}
if yymousefin < yymousebase {yymousefin2 = yymousefin;yymousefin = yymousebase;yymousebase = yymousefin2}

if instance_exists(obj_ship){
with(obj_ship){
if point_in_rectangle(xx, yy,other.xxmousebase, other.yymousebase, other.xxmousefin, other.yymousefin) {
//if collision_rectangle(other.xxmousebase, other.yymousebase, other.xxmousefin, other.yymousefin, id, true, true ){
if /*ds_grid_get(obj_planetary.planetary,32,planetparent) = 1 &&*/ 
enemy = global.idfixe && partir = 0 && planetparent = obj_planetary.planetnowid {suislepatron = 1 ;}
}}}
xxmousefin = 0
yymousefin = 0
xxmousebase = 0
yymousebase = 0
}



//envoyer coloniser ou conquerrir en clickant sur planet non colo en demandant si ship exist tjr
//si oui envoyer ses ship pour de vrai avec return ,a la fin du compteur les transformer en attaquant 1 sur la planete
//faire pop par 15 les vaisseau moi je dis

if device_mouse_check_button_released(0, mb_left) && echelle = 0 && menuplanet = 0{
xxmouse = device_mouse_x(0);
yymouse = device_mouse_y(0);

//MOON
if point_distance(xxlune1,yylune1,xxmouse,yymouse) < (ds_grid_get(obj_planetary.planetary,83,planetnowid)/25)*optiportabletaille {
checkok = 0
if instance_exists(obj_ship){with(obj_ship){if suislepatron = 1 {if planetparent = obj_planetary.planetnowid {
if type = 5 && other.checkok = 0 {
ds_grid_add(obj_planetary.planetary,47,planetparent,-1)
ds_grid_add(obj_planetary.planetary,58,planetparent,-1)
ds_grid_add(obj_planetary.planetary,53,planetparent,-1)
partir = 4
other.checkok += 1 
suislepatron = 0
alarm[6] = -1
}}}}}
}

//PLANET
if point_distance(room_width/2,room_height/2,xxmouse,yymouse) < (ds_grid_get(obj_planetary.planetary,7,planetnowid)/25)*optiportabletaille {

if ds_grid_get(obj_planetary.planetary,32,planetnowid) = 0 {//coloniser
if destroyplanetnow = 0 {
if ds_grid_get(planetary,204,buildaffect) >= 0 {
checkok = 0
if instance_exists(obj_ship){with(obj_ship){if suislepatron = 1 {if planetparent = obj_planetary.planetnowid {}else{
if type = 5 && other.checkok = 0 {
ds_grid_add(obj_planetary.planetary,47,planetparent,-1)
ds_grid_add(obj_planetary.planetary,58,planetparent,-1)
ds_grid_add(obj_planetary.planetary,53,planetparent,-1)
partir = 1
other.checkok += 1 
suislepatron = 0
alarm[7] = ds_grid_get(obj_planetary.planetary,50,obj_planetary.planetnowid)*ds_grid_height(obj_planetary.planetary)}}}}}

//coute 10 vaisseau mode
//if checkok >= 10 {
if checkok = 0{}else{

ds_grid_set(planetary,33,planetnowid,ds_grid_get(planetary,50,planetnowid))//}
}
}
}
}else if ds_grid_get(obj_planetary.planetary,32,planetnowid) > 0 && ds_grid_get(obj_planetary.planetary,32,planetnowid) < 5 {//attaquer



checkok = 0
if instance_exists(obj_ship){with(obj_ship){if suislepatron = 1 {if planetparent = obj_planetary.planetnowid {}else{
partir = 2
other.checkok += 1 
suislepatron = 0
alarm[7] = ds_grid_get(obj_planetary.planetary,50,obj_planetary.planetnowid)*ds_grid_height(obj_planetary.planetary)}}}}
if checkok = 0 or menuplanet = 1{}else{
ds_grid_set(planetary,51,planetnowid,ds_grid_get(planetary,50,planetnowid))
ds_grid_set(planetary,34,planetnowid,global.idfixe)
ds_grid_set(planetary,52,planetnowid,checkok)}


}else if ds_grid_get(obj_planetary.planetary,32,planetnowid) = global.idfixe {//envoyer les vaisseau pour ajouter
checkok = 0
if instance_exists(obj_ship){with(obj_ship){if suislepatron = 1 {if planetparent = obj_planetary.planetnowid {}else{
if ds_grid_get(obj_planetary.planetary,32,planetparent) = global.idfixe {
partir = 3
other.checkok += 1 
suislepatron = 0
destinationship = other.planetnowid
alarm[7] = ds_grid_get(obj_planetary.planetary,50,obj_planetary.planetnowid)*ds_grid_height(obj_planetary.planetary)}}}}}

}



}}
}

/*ds_grid_add(planetary,43,buildaffect,2)//shiptype1nbr
ds_grid_add(planetary,44,buildaffect,0)//shiptype2nbr
ds_grid_add(planetary,45,buildaffect,0)//shiptype3nbr
ds_grid_add(planetary,46,buildaffect,0)//shiptype4nbr
ds_grid_add(planetary,47,buildaffect,0)//shiptype5nbr
ds_grid_add(planetary,48,buildaffect,0)//shiptype6nbr
ds_grid_add(planetary,49,buildaffect,0)//shiptype7nbr*/
