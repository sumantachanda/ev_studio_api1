/// name : {"first":"Philip","middle":"Jay","last":"Fry"}
/// images : {"head-shot":"","main":"https://upload.wikimedia.org/wikipedia/en/2/28/Philip_Fry.png"}
/// gender : "Male"
/// species : "Human"
/// homePlanet : "Earth"
/// occupation : "Intergalactic Delivery Boy"
/// sayings : ["Shut up and take my money!","I'm walking on sunshine, woah oh oooh","This is how we do it. Pick your nose and chew it","wow! I never would have thought of that.","Bigfoot! He's real! I knew it! The Loch Ness Monster's book was right!","I didn't ask for a completely reasonable excuse! I asked you to get busy!","It's like a party in my mouth and everybody's throwing up!","My God, it's full of ads!","There's so many killbots behind us, I can't count them all. Three, I think.","They're like sex, except I'm having them!","We're in the middle of nowhere, which is the safest part of nowhere.","When will young people learn that playing 'Dungeons and Dragons' doesn't make you cool!","Why am I sticky and naked? Did I miss something fun?","Wow! A superpowers drug you can just rub onto your skin? You'd think it would be something you'd have to freebase.","Wow, you got that off the Internet? In my day, the Internet was only used to download pornography.","But this is HDTV. It's got better resolution than the real world.","Can I pull up my pants now?","Existing is basically all I do!","Hardy Boys: too easy. Nancy Drew: too hard!","Hey look, it's that guy you are!","Hooray, we don't have to do anything!","How about me? I'm human, and I've always wanted to see the future!","How can I live my life if I can't tell good from evil?","I can burp the alphabet. A, B, D ... no, wait ...","I did it! And it's all thanks to the books at my local library.","I don't regret this, but I both rue and lament it.","I have more important things to do today than laugh and clap my hands.","I haven't had time off since I was twenty-one through twenty-four.","I'll be whatever I wanna do.","I'm going to continue never washing this cheek again.","I'm gonna be a science fiction hero, just like Uhura, or Captain Janeway, or Xena!","I'm literally angry with rage!","I'm never gonna get used to the thirty-first century. Caffeinated bacon?","I'm not a robot like you -- I don't like having disks crammed into me. Unless they're Oreos. And then only in the mouth.","I must be a robot. Why else would human women refuse to date me?","I refuse to testify on the grounds that my organs will be chopped up into a patty.","It's all there, in the macaroni.","It's a widely-believed fact!","It's like a party in my mouth and everyone's throwing up.","Leela, Bender, we're going grave-robbing.","Leela, there's nothing wrong with anything.","Make up some feelings and tell her you have them.","My hands! My horrible, human hands!","No, no, I was just picking my nose.","People said I was dumb but I proved them!","Please, Mr. Nixon! We're appealing to your sense of decency!","Prepare to be thought at!","Robots don't go to heaven.","Stop abducting me!","Sweet justice! Sweet, juicy justice!","That doesn't look like an 'L', unless you count lower case.","That's a chick show. I prefer programs of the genre World's Blankiest Blank.","The butter in my pocket is melting!","The less fortunate get all the breaks!","There's a lot about my face you don't know.","There's a political debate on. Quick, change the channel!","These new hands are great. I'm gonna break them in tonight.","The spoon's in the foot powder.","They're great! They're like sex except I'm having them.","What kind of bozos would start a Bender protest group?","Where's Captain Bender? Off catastrophizing some other planet?","Why use my own legs like an idiot when I can use a Chickenwalker?","You'll barely regret this.","You mean Bender is the evil Bender? I'm shocked! Shocked! Well not that shocked."]
/// id : 1
/// age : "25"

class NewsAPiEv {
  Name? _name;
  Images? _images;
  String? _gender;
  String? _species;
  String? _homePlanet;
  String? _occupation;
  List<String>? _sayings;
  int? _id;
  String? _age;

  Name? get name => _name;
  Images? get images => _images;
  String? get gender => _gender;
  String? get species => _species;
  String? get homePlanet => _homePlanet;
  String? get occupation => _occupation;
  List<String>? get sayings => _sayings;
  int? get id => _id;
  String? get age => _age;

  NewsAPiEv({
      Name? name,
      Images? images,
      String? gender,
      String? species,
      String? homePlanet,
      String? occupation,
      List<String>? sayings,
      int? id,
      String? age}){
    _name = name;
    _images = images;
    _gender = gender;
    _species = species;
    _homePlanet = homePlanet;
    _occupation = occupation;
    _sayings = sayings;
    _id = id;
    _age = age;
}

  NewsAPiEv.fromJson(dynamic json) {
    _name = json['name'] != null ? Name.fromJson(json['name']) : null;
    _images = json['images'] != null ? Images.fromJson(json['images']) : null;
    _gender = json['gender'];
    _species = json['species'];
    _homePlanet = json['homePlanet'];
    _occupation = json['occupation'];
    _sayings = json['sayings'] != null ? json['sayings'].cast<String>() : [];
    _id = json['id'];
    _age = json['age'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_name != null) {
      map['name'] = _name?.toJson();
    }
    if (_images != null) {
      map['images'] = _images?.toJson();
    }
    map['gender'] = _gender;
    map['species'] = _species;
    map['homePlanet'] = _homePlanet;
    map['occupation'] = _occupation;
    map['sayings'] = _sayings;
    map['id'] = _id;
    map['age'] = _age;
    return map;
  }

}

/// head-shot : ""
/// main : "https://upload.wikimedia.org/wikipedia/en/2/28/Philip_Fry.png"

class Images {
  //String? _head-shot;
  String? _main;

 // String? get head-shot => _head-shot;
  String? get main => _main;

  Images({
     // String? head-shot,
      String? main}){
    //_head-shot = head-shot;
    _main = main;
}

  Images.fromJson(dynamic json) {
   // _head-shot = json['head-shot'];
    _main = json['main'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
   // map['head-shot'] = _head-shot;
    map['main'] = _main;
    return map;
  }

}

/// first : "Philip"
/// middle : "Jay"
/// last : "Fry"

class Name {
  String? _first;
  String? _middle;
  String? _last;

  String? get first => _first;
  String? get middle => _middle;
  String? get last => _last;

  Name({
      String? first,
      String? middle,
      String? last}){
    _first = first;
    _middle = middle;
    _last = last;
}

  Name.fromJson(dynamic json) {
    _first = json['first'];
    _middle = json['middle'];
    _last = json['last'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['first'] = _first;
    map['middle'] = _middle;
    map['last'] = _last;
    return map;
  }

}