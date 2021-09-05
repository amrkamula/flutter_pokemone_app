class Poke{
  String? name;
  String? height;
  String? weight;
  List<String>? types;
  List<String>? weaknesses;
  String? nextEvolution;

  Poke({this.name,this.height,this.weight,this.types,this.weaknesses,this.nextEvolution});

}

class PokeCollection{
  static List<Poke> pokeList = [
    Poke(
      name: 'Blaziken',
      height: '1.9 m',
      weight: '52.0 kg',
      types: ['Fire','Fighting'],
      weaknesses: ['Psychic','Flying','Water','Ground'],
      nextEvolution: 'Mega Blaziken'
    ),
    Poke(
        name: 'Blissey',
        height: '1.5 m',
        weight: '46.8 kg',
        types: ['Normal'],
        weaknesses: ['Fighting'],
        nextEvolution: 'none'
    ),
    Poke(
        name: 'Crobat',
        height: '1.8 m',
        weight: '75.0 kg',
        types: ['Poison','Flying'],
        weaknesses: ['Psychic','Electric','Ice','Rock'],
        nextEvolution: 'none',
    ),
    Poke(
        name: 'Cubone',
        height: '0.4 m',
        weight: '6.5 kg',
        types: ['Ground'],
        weaknesses: ['Ice','Water','Grass'],
       nextEvolution: 'Marowack',
    ),
    Poke(
        name: 'Empoleon',
        height: '1.7 m',
        weight: '84.5 kg',
        types: ['Water','Steel'],
        weaknesses: ['Fighting','Electric','Ground'],
        nextEvolution: 'none',
    ),
    Poke(
        name: 'Gardevoir',
        height: '1.6 m',
        weight: '48.4 kg',
        types: ['Fairy','Psychic'],
        weaknesses: ['Poison','Steel','Ghost'],
        nextEvolution: 'Mega Gardevoir'
    ),
    Poke(
        name: 'Gengar',
        height: '1.5 m',
        weight: '40.5 kg',
        types: ['Ghost','Poison'],
        weaknesses: ['Psychic','Dark','Ghost','Ground'],
        nextEvolution: 'Mega Gengar'
    ),
    Poke(
        name: 'Heracross',
        height: '1.5 m',
        weight: '54.0 kg',
        types: ['Bug','Fighting'],
        weaknesses: ['Dark','Fighting','Grass','Ground'],
      nextEvolution: 'Mega Heracross'
    ),
    Poke(
        name: 'Hydreigon',
        height: '1.8 m',
        weight: '160.0 kg',
        types: ['Dark','Dragon'],
        weaknesses: ['Bug','Fairy','Water','Ice'],
        nextEvolution: 'none'
    ),
    Poke(
        name: 'Jigglypuff',
        height: '0.5 m',
        weight: '5.5 kg',
        types: ['Fairy','Normal'],
        weaknesses: ['Poison','Steel'],
        nextEvolution: 'Wigglytuff'
    ),
    Poke(
        name: 'Lapras',
        height: '2.5 m',
        weight: '220.0 kg',
        types: ['Water','Ice'],
        weaknesses: ['Rock','Fighting','Electric','Grass'],
        nextEvolution: 'none'
    ),
    Poke(
        name: 'Ludicolo',
        height: '1.5 m',
        weight: '55.0 kg',
        types: ['Water','Grass'],
        weaknesses: ['Poison','Flying','Bug'],
        nextEvolution: 'none'
    ),
    Poke(
        name: 'Lugia',
        height: '5.21.9 m',
        weight: '216.0 kg',
        types: ['Psychic','Flying'],
        weaknesses: ['Electric','Ice','Rock','Dark','Ghost'],
        nextEvolution: 'none'
    ),
    Poke(
        name: 'Ninetales',
        height: '1.1 m',
        weight: '19.9 kg',
        types: ['Fire'],
        weaknesses: ['Rock','Water','Ground'],
        nextEvolution: 'none'
    ),
    Poke(
        name: 'Politoed',
        height: '1.1 m',
        weight: '33.9 kg',
        types: ['Water'],
        weaknesses: ['Electric','Grass'],
        nextEvolution: 'Poliwrath'
    ),
    Poke(
        name: 'PorygonZ',
        height: '0.9 m',
        weight: '34.0 kg',
        types: ['Normal'],
        weaknesses: ['Fighting'],
        nextEvolution: 'none'
    ),
    Poke(
        name: 'Rayquaza',
        height: '7.0 m',
        weight: '206.5 kg',
        types: ['Dragon','Flying'],
        weaknesses: ['Rock','Fairy','Ice'],
        nextEvolution: 'none'
    ),
    Poke(
        name: 'Samurott',
        height: '1.5 m',
        weight: '94.6 kg',
        types: ['Water'],
        weaknesses: ['Electricity','Grass'],
        nextEvolution: 'none',
    ),
    Poke(
        name: 'Sceptile',
        height: '1.7 m',
        weight: '52.2 kg',
        types: ['Grass'],
        weaknesses: ['Poison','Flying','Bug','Fire','Ice'],
        nextEvolution: 'Mega Sceptile'
    ),
    Poke(
        name: 'Slaking',
        height: '2.0 m',
        weight: '130.5 kg',
        types: ['Normal'],
        weaknesses: ['Fighting'],
        nextEvolution: 'none'
    ),
    Poke(
        name: 'Spiritomb',
        height: '1.0 m',
        weight: '108.0 kg',
        types: ['Dark','Ghost'],
        weaknesses: ['Fairy'],
        nextEvolution: 'none'
    ),
    Poke(
        name: 'Weavile',
        height: '1.1 m',
        weight: '34.0 kg',
        types: ['Dark','Ice'],
        weaknesses: ['Bug','Fire','Rock','Steel','Fairy','Fighting'],
        nextEvolution: 'none'
    ),
  ];
}