DROP DATABASE IF EXISTS pokedex;

CREATE DATABASE pokedex;
USE pokedex;

CREATE TABLE types (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  type VARCHAR(25)
);

CREATE TABLE images (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  img VARCHAR(255)
);

CREATE TABLE pokemon (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  typeNum INT not null,
  typeNum2 INT,
  imageNum INT,
  foreign key (typeNum) references types(id),
  foreign key (typeNum2) references types(id)
);

create table trainer(
id int primary key not null auto_increment,
name varchar(7) not null,
password varchar(45) not null,
age int not null,
gender varchar(20) not null
);


create table team (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  trainer_id int not null,
  pokemon1 int not null,
  pokemon2 int,
  pokemon3 int,
  pokemon4 int,
  pokemon5 int,
  pokemon6 int,
  foreign key (trainer_id) references trainer(id),
  foreign key (pokemon1) references pokemon(id),
  foreign key (pokemon2) references pokemon(id),
  foreign key (pokemon3) references pokemon(id),
  foreign key (pokemon4) references pokemon(id),
  foreign key (pokemon5) references pokemon(id),
  foreign key (pokemon6) references pokemon(id)
);

select * from pokemon;
INSERT INTO types (type) VALUES ("Grass");
INSERT INTO types (type) VALUES ("Fire");
INSERT INTO types (type) VALUES ("Water");
INSERT INTO types (type) VALUES ("Bug");
INSERT INTO types (type) VALUES ("Normal");
INSERT INTO types (type) VALUES ("Poison");
INSERT INTO types (type) VALUES ("Flying");
INSERT INTO types (type) VALUES ("Electric");
INSERT INTO types (type) VALUES ("Ground");
INSERT INTO types (type) VALUES ("Fighting");
INSERT INTO types (type) VALUES ("Psychic");
INSERT INTO types (type) VALUES ("Rock");
INSERT INTO types (type) VALUES ("Ghost");
INSERT INTO types (type) VALUES ("Ice");
INSERT INTO types (type) VALUES ("Dragon");
INSERT INTO types (type) VALUES ("Dark");
INSERT INTO types (type) VALUES ("Steel");
INSERT INTO types (type) VALUES ("Fairy");



INSERT INTO images (img) VALUES ("http://vignette4.wikia.nocookie.net/nintendo/images/4/43/Bulbasaur.png/revision/latest?cb=20141002083518&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/8/86/Ivysaur.png/revision/latest?cb=20141002083450&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/b/be/Venusaur.png/revision/latest?cb=20141002083423&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/5/56/Charmander.png/revision/latest?cb=20141002083351&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/f/fb/Charmeleon.png/revision/latest?cb=20141002083329&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/9/95/Charizard.png/revision/latest?cb=20141002083306&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/e/e3/Squirtle.png/revision/latest?cb=20141002083243&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/d/d7/Wartortle.png/revision/latest?cb=20141002083217&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/4/41/Blastoise.png/revision/latest?cb=20141002083147&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/0/05/Caterpie.png/revision/latest?cb=20141002083123&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/6/6b/Metapod.png/revision/latest?cb=20141002083057&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/9/96/Butterfree.png/revision/latest?cb=20141002083032&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette4.wikia.nocookie.net/nintendo/images/d/d6/Weedle.png/revision/latest?cb=20141002083010&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/6/63/Kakuna.png/revision/latest?cb=20141002082941&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/0/0d/Beedrill.png/revision/latest?cb=20141002082900&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/b/b7/Pidgey.png/revision/latest?cb=20141002082835&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/5/57/Pidgeotto.png/revision/latest?cb=20141002082803&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette4.wikia.nocookie.net/nintendo/images/a/a9/Pidgeot.png/revision/latest?cb=20141002082735&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/c/c4/Rattata.png/revision/latest?cb=20141002082710&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/d/d6/Raticate.png/revision/latest?cb=20141002082646&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/a/a1/Spearow.png/revision/latest?cb=20141002082622&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/4/41/Fearow.png/revision/latest?cb=20160509230225&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/1/11/Ekans.png/revision/latest?cb=20141002082500&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/4/4d/Arbok.png/revision/latest?cb=20141002082434&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/7/77/Pikachu.png/revision/latest?cb=20141002082401&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/3/34/Raichu.png/revision/latest?cb=20141002082334&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/d/df/Sandshrew.png/revision/latest?cb=20141002082307&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/1/13/Sandslash.png/revision/latest?cb=20141002082238&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/7/74/NidoranF.png/revision/latest?cb=20151022215843&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette4.wikia.nocookie.net/nintendo/images/3/31/Nidorina.png/revision/latest?cb=20141002082133&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/4/43/Nidoqueen.png/revision/latest?cb=20151022215827&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/9/91/NidoranM.png/revision/latest?cb=20151022215854&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/7/7a/Nidorino.png/revision/latest?cb=20151022215909&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/7/76/Nidoking.png/revision/latest?cb=20141002081956&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/d/d2/Clefairy.png/revision/latest?cb=20110917211807&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/d/d5/Clefable.png/revision/latest?cb=20141002081855&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/8/8d/Vulpix.png/revision/latest?cb=20141002081824&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/9/98/Ninetales.png/revision/latest?cb=20141002081754&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/a/af/Jigglypuff.png/revision/latest?cb=20141002081555&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/f/f1/Wigglytuff.png/revision/latest?cb=20151020172719&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/6/67/Zubat.png/revision/latest?cb=20141002081438&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/2/2c/Golbat.png/revision/latest?cb=20160226131643&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette4.wikia.nocookie.net/nintendo/images/d/d9/Oddish.png/revision/latest?cb=20141002081340&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/5/59/Gloom.png/revision/latest?cb=20141002081313&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette4.wikia.nocookie.net/nintendo/images/3/32/Vileplume.png/revision/latest?cb=20141002081242&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/e/ee/Paras.png/revision/latest?cb=20111101142258&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/6/62/Parasect.png/revision/latest?cb=20141002081144&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette4.wikia.nocookie.net/nintendo/images/d/d3/Venonat.png/revision/latest?cb=20160505181228&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/c/c2/Venomoth.png/revision/latest?cb=20141002081030&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/7/7a/Diglett.png/revision/latest?cb=20141002081004&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/8/8b/Dugtrio.png/revision/latest?cb=20161114145926&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/9/99/Meowth.png/revision/latest?cb=20160811132041&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/b/b3/Persian.png/revision/latest?cb=20141002080840&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/3/32/Psyduck.png/revision/latest?cb=20160509232356&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/c/cf/Golduck.png/revision/latest?cb=20141002080725&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/8/8b/Mankey.png/revision/latest?cb=20151020171140&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/e/e0/Primeape.png/revision/latest?cb=20151020171714&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/b/bb/Growlithe.png/revision/latest?cb=20141002080601&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/5/50/Arcanine.png/revision/latest?cb=20141002080533&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/9/90/Poliwag.png/revision/latest?cb=20160509233602&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/2/24/Poliwhirl.png/revision/latest?cb=20160804203710&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/8/85/Poliwrath.png/revision/latest?cb=20160509233622&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/f/f6/Abra.png/revision/latest?cb=20141002080336&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/b/b0/Kadabra.png/revision/latest?cb=20141002080307&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/f/f5/Alakazam.png/revision/latest?cb=20141002080217&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/2/2b/Machop.png/revision/latest?cb=20141002080148&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/c/ca/Machoke.png/revision/latest?cb=20141002080118&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/b/bf/Machamp.png/revision/latest?cb=20141002080045&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette4.wikia.nocookie.net/nintendo/images/d/d1/Bellsprout.png/revision/latest?cb=20141002080012&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/f/f9/Weepinbell.png/revision/latest?cb=20160524193835&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/5/55/Victreebel.png/revision/latest?cb=20111102135829&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/4/43/Tentacool.png/revision/latest?cb=20141002075841&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/7/78/Tentacruel.png/revision/latest?cb=20141002075755&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/1/12/Geodude.png/revision/latest?cb=20141002075657&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/b/b6/Graveler.png/revision/latest?cb=20141002075628&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette4.wikia.nocookie.net/nintendo/images/c/ce/Golem.png/revision/latest?cb=20141002075555&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/5/5f/Ponyta.png/revision/latest?cb=20160509233419&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette4.wikia.nocookie.net/nintendo/images/0/01/Rapidash.png/revision/latest?cb=20141002075439&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/9/9b/Slowpoke.png/revision/latest?cb=20160509233724&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette4.wikia.nocookie.net/nintendo/images/e/e1/Slowbro.png/revision/latest?cb=20141002075231&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/8/80/Magnemite.png/revision/latest?cb=20141002075115&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/d/d1/Magneton.png/revision/latest?cb=20141002075041&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/f/fe/Farfetchd.png/revision/latest?cb=20141002075000&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/9/9c/Doduo.png/revision/latest?cb=20161112160321&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/1/1a/Dodrio.png/revision/latest?cb=20141002074752&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/f/f1/Seel.png/revision/latest?cb=20141002074712&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/1/1d/Dewgong.png/revision/latest?cb=20141002074637&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/d/d7/Grimer.png/revision/latest?cb=20151020145749&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette4.wikia.nocookie.net/nintendo/images/8/8e/Muk.png/revision/latest?cb=20141002074427&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/6/63/Shellder.png/revision/latest?cb=20141002074219&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/7/71/Cloyster.png/revision/latest?cb=20141002083641&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/c/c1/Gastly.png/revision/latest?cb=20141002083707&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette4.wikia.nocookie.net/nintendo/images/4/41/Haunter.png/revision/latest?cb=20141002083742&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette4.wikia.nocookie.net/nintendo/images/f/f8/Gengar.png/revision/latest?cb=20101120205715&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/b/b2/Onix.png/revision/latest?cb=20141002083816&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/5/5d/Drowzee.png/revision/latest?cb=20141002083845&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/0/0e/Hypno.png/revision/latest?cb=20141002083909&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/d/da/Krabby.png/revision/latest?cb=20141002083932&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/a/a4/Kingler.png/revision/latest?cb=20141002083955&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/8/80/Voltorb.png/revision/latest?cb=20141002084033&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette4.wikia.nocookie.net/nintendo/images/5/52/Electrode.png/revision/latest?cb=20141002084112&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/5/5f/Exeggcute.png/revision/latest?cb=20141002084139&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/e/e0/Exeggutor.png/revision/latest?cb=20141002084212&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/6/65/Cubone.png/revision/latest?cb=20141002084247&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/c/c4/Marowak.png/revision/latest?cb=20160811131620&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/0/0f/Hitmonlee.png/revision/latest?cb=20141002084340&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/7/73/Hitmonchan.png/revision/latest?cb=20141002084407&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette4.wikia.nocookie.net/nintendo/images/a/ab/Lickitung.png/revision/latest?cb=20151020145904&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/b/b2/Koffing.png/revision/latest?cb=20141002084455&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/8/88/Weezing.png/revision/latest?cb=20141002084534&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/3/36/Rhyhorn.png/revision/latest?cb=20141002084605&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/0/01/Rhydon.png/revision/latest?cb=20141002084631&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/2/2b/Chansey.png/revision/latest?cb=20151020145947&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/0/03/Tangela.png/revision/latest?cb=20141002084736&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/3/39/Kangaskhan.png/revision/latest?cb=20141002084802&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/6/6c/Horsea.png/revision/latest?cb=20141002084822&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/2/2d/Seadra.png/revision/latest?cb=20141002084848&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/9/99/Goldeen.png/revision/latest?cb=20141002084909&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/8/8b/Seaking.png/revision/latest?cb=20141002084930&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/e/e8/Staryu.png/revision/latest?cb=20151018131524&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/5/56/Starmie.png/revision/latest?cb=20141002085024&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/9/93/Mr_Mime.png/revision/latest?cb=20141002085048&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/c/c2/Scyther.png/revision/latest?cb=20141002085118&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/e/e2/Jynx.png/revision/latest?cb=20141002085139&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/3/3a/Electabuzz.png/revision/latest?cb=20141002085200&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette4.wikia.nocookie.net/nintendo/images/4/46/Magmar.png/revision/latest?cb=20141002085225&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/b/b4/Pinsir.png/revision/latest?cb=20141002085247&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/9/98/Tauros.png/revision/latest?cb=20141002085311&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/0/01/Magikarp.png/revision/latest?cb=20141002085333&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/d/d7/Gyarados.png/revision/latest?cb=20141002085357&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/3/30/Lapras.png/revision/latest?cb=20141002085417&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/0/03/Ditto.png/revision/latest?cb=20141002085455&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette4.wikia.nocookie.net/nintendo/images/f/f2/Eevee.png/revision/latest?cb=20141002085518&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette4.wikia.nocookie.net/nintendo/images/f/fc/Vaporeon.png/revision/latest?cb=20141002085541&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette4.wikia.nocookie.net/nintendo/images/1/1e/Jolteon.png/revision/latest?cb=20141002085611&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/1/17/Flareon.png/revision/latest?cb=20141002085639&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/2/2d/Porygon.png/revision/latest?cb=20160708135007&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/a/a4/Omanyte.png/revision/latest?cb=20141002085825&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/9/97/Omastar.png/revision/latest?cb=20141002085852&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/a/a1/Kabuto.png/revision/latest?cb=20141002085914&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/7/72/Kabutops.png/revision/latest?cb=20141002085942&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/e/e6/Aerodactyl.png/revision/latest?cb=20141002090004&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/0/0b/Snorlax.png/revision/latest?cb=20141002090028&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/5/52/Articuno.png/revision/latest?cb=20141002090055&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/d/d8/Zapdos.png/revision/latest?cb=20141002090124&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/0/01/Moltres.png/revision/latest?cb=20141002090414&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/9/99/Dratini.png/revision/latest?cb=20160226131111&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette1.wikia.nocookie.net/nintendo/images/5/5a/Dragonair.png/revision/latest?cb=20141002090319&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette2.wikia.nocookie.net/nintendo/images/a/a6/Dragonite.png/revision/latest?cb=20141002090341&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/d/d3/Mewtwo.png/revision/latest?cb=20141002090451&path-prefix=en");
INSERT INTO images (img) VALUES ("http://vignette3.wikia.nocookie.net/nintendo/images/b/bf/Mew.png/revision/latest?cb=20141002090523&path-prefix=en");



INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Bulbasaur", 1, 1);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Ivysaur", 1, 2);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Venusaur", 1, 3);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Charmander", 2, 4);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Charmeleon", 2, 5);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Charizard", 2, 6);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Squirtle", 3, 7);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Wartortle", 3, 8);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Blastoise", 3, 9);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Caterpie", 4, 10);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Metapod", 4, 11);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Butterfree", 4, 12);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Weedle", 4, 13);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Kakuna", 4, 14);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Beedrill", 4, 15);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Pidgey", 5, 16);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Pidgeotto", 5, 17);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Pidgeot", 5, 18);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Rattata", 5, 19);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Raticate", 5, 20);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Spearow", 5, 21);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Fearow", 5, 22);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Ekans", 6, 23);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Arbok", 6, 24);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Pikachu", 7, 25);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Raichu", 7, 26);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Sandshrew", 8, 27);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Sandslash", 8, 28);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Nidoran (F)", 6, 29);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Nidorina", 6, 30);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Nidoqueen", 6, 31);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Nidoran (M)", 6, 32);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Nidorino", 6, 33);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Nidoking", 6, 34);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Clefairy", 5, 35);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Clefable", 5, 36);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Vulpix", 2, 37);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Ninetales", 2, 38);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Jigglypuff", 5, 39);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Wigglytuff", 5, 40);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Zubat", 6, 41);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Golbat", 6, 42);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Oddish", 1, 43);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Gloom", 1, 44);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Vileplume", 1, 45);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Paras", 4, 46);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Parasect", 4, 47);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Venonat", 4, 48);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Venomoth", 4, 49);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Diglett", 8, 50);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Dugtrio", 8, 51);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Meowth", 5, 52);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Persian", 5, 53);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Psyduck", 3, 54);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Golduck", 3, 55);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Mankey", 9, 56);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Primeape", 9, 57);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Growlithe", 2, 58);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Arcanine", 2, 59);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Poliwag", 3, 60);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Poliwhirl", 3, 61);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Poliwrath", 3, 62);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Abra", 10, 63);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Kadabra", 10, 64);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Alakazam", 10, 65);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Machop", 9, 66);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Machoke", 9, 67);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Machamp", 9, 68);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Bellsprout", 1, 69);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Weepinbell", 1, 70);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Victreebel", 1, 71);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Tentacool", 3, 72);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Tentacruel", 3, 73);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Geodude", 11, 74);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Graveler", 11, 75);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Golem", 11, 76);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Ponyta", 2, 77);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Rapidash", 2, 78);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Slowpoke", 3, 79);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Slowbro", 3, 80);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Magnemite", 7, 81);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Magneton", 7, 82);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Farfetchd'd", 5, 83);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Doduo", 5, 84);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Dodrio", 5, 85);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Seel", 3, 86);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Dewgong", 3, 87);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Grimer", 6, 88);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Muk", 6, 89);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Shellder", 3, 90);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Cloyster", 3, 91);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Gastly", 12, 92);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Haunter", 12, 93);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Gengar", 12, 94);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Onix", 11, 95);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Drowzee", 10, 96);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Hypno", 10, 97);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Krabby", 3, 98);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Kingler", 3, 99);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Voltorb", 7, 100);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Electrode", 7, 101);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Exeggcute", 1, 102);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Exeggutor", 1, 103);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Cubone", 8, 104);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Marowak", 8, 105);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Hitmonlee", 9, 106);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Hitmonchan", 9, 107);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Lickitung", 5, 108);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Koffing", 6, 109);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Weezing", 6, 110);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Rhyhorn", 8, 111);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Rhydon", 8, 112);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Chansey", 5, 113);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Tangela", 1, 114);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Kangaskhan", 5, 115);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Horsea", 3, 116);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Seadra", 3, 117);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Goldeen", 3, 118);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Seaking", 3, 119);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Staryu", 3, 120);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Starmie", 3, 121);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Mr. Mime", 10, 122);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Scyther", 4, 123);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Jynx", 13, 124);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Electabuzz", 7, 125);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Magmar", 2, 126);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Pinsir", 4, 127);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Tauros", 5, 128);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Magikarp", 3, 129);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Gyarados", 3, 130);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Lapras", 3, 131);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Ditto", 5, 132);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Eevee", 5, 133);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Vaporeon", 3, 134);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Jolteon", 7, 135);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Flareon", 2, 136);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Porygon", 5, 137);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Omanyte", 11, 138);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Omastar", 11, 139);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Kabuto", 11, 140);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Kabutops", 11, 141);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Aerodactyl", 11, 142);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Snorlax", 5, 143);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Articuno", 13, 144);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Zapdos", 7, 145);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Moltres", 2, 146);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Dratini", 14, 147);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Dragonair", 14, 148);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Dragonite", 14, 149);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Mewtwo", 10, 150);
INSERT INTO pokemon (name, typeNum, imageNum) VALUES ("Mew", 10, 151);

select * from trainer;