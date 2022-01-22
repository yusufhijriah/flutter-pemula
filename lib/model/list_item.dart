class ListMovie {
  String title;
  String director;
  String star;
  String storyline;
  String imageAsset;

  ListMovie({
    required this.title,
    required this.director,
    required this.star,
    required this.storyline,
    required this.imageAsset,
  });
}

var itemMovieList = [
  ListMovie(
    title: 'Avatar',
    director: 'Director: James Cameron |',
    star: '4,9',
    storyline:
        'The film Avatar tells the story of human life in the future that is experiencing an energy crisis. Humans must find a new source of energy and intend to search on another planet called Pandora.',
    imageAsset: 'images/avatar.jpeg',
  ),
  ListMovie(
    title: 'Black Panther',
    director: 'Director: Ryan Coogler |',
    star: '4,7',
    storyline:
        'Thousands of years ago, five tribes in Africa fought over a meteor containing vibranium in it. A soldier then swallowed a metal-affected "heart-shaped herb" and acquired the superhuman abilities that made him the first "Black Panther". He united all the tribes, except the Jabari Tribe to form a country called Wakanda.',
    imageAsset: 'images/blackpanther.jpeg',
  ),
  ListMovie(
    title: 'Captain America',
    director: 'Director: Joe Russo, Anthony Russo |',
    star: '4,8',
    storyline:
        'Steve Rogers seeks to place himself at the center of the modern world, having been frozen since World War II. When he wakes up, chaos and dangerous enemies await him.',
    imageAsset: 'images/captain_america.jpeg',
  ),
  ListMovie(
    title: 'Fast And Furious',
    director: 'Director: Vin Diesel, Justin Lin |',
    star: '4,8',
    storyline:
        'A high-speed heist in LA has street racer Dominic Toretto and his crew being hunted by the LAPD. FBI agent Brian goes undercover and tries to befriend him in order to investigate the case. A high-speed robbery case in LA makes street racer Dominic Toretto and his crew hunted by the LAPD. FBI agent Brian goes undercover and tries to befriend him to investigate this case.',
    imageAsset: 'images/fastandfurious.jpeg',
  ),
  ListMovie(
    title: 'Joker',
    director: 'Todd Phillips |',
    star: '4,2',
    storyline:
        'Arthur Fleck, a party clown, lives in difficult circumstances with his ailing mother. Because people find him strange, he decides to turn evil and make a mess.',
    imageAsset: 'images/Joker.jpeg',
  ),
  ListMovie(
    title: 'Jurastic World',
    director: 'Colin Trevorrow |',
    star: '4,3',
    storyline:
        'A safari park filled with genetically modified dinosaurs is in an uproar when one of the dinosaurs escapes from its cage. A veterinary expert and ex-military was trying to save everyone.',
    imageAsset: 'images/jurastic_world.jpeg',
  ),
  ListMovie(
    title: 'Star Wars',
    director: 'George Lucas |',
    star: '4,4',
    storyline:
        'A new power seeks to destroy the Republics power. Finn, Rey, and Poe also join the Resistance group to put up a fight and look for Luke, the last Jedi.',
    imageAsset: 'images/starwars.jpeg',
  ),
];
