import 'package:audioplayers/audioplayers.dart';
import 'package:avinash/MusicPage.dart';
import 'package:avinash/main.dart';
import 'package:avinash/trypad.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  int selectedIcon = 0;
  bool isSearching = false;
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration popsition = Duration.zero;
  List<bool> isPlayingList = List.generate(8, (index) => false);

  AudioPlayer playerss = AudioPlayer();
  int currentlyPlayingIndex = -1;

  List<String> songlist = [
    "Aran vally",
    "Gone Girl",
    "Gulabi Sharara",
    "Haiwaan",
    "Khalasi",
    "kisi ki yaadon",
    "phle Bhi Main",
    "Sari Duniya",
  ];
  List<String> imageicon = [
    "assets/images/bb.jpg",
    "assets/images/dg.jpg",
    "assets/images/fg.jpg",
    "assets/images/ji.jpg",
    "assets/images/mh.jpg",
    "assets/images/portrait-person-with-wavy-texture_23-2150169248.jpg",
    "assets/images/xx.jpg",
    "assets/images/mm.jpg",
    "assets/images/Animal-2.jpg",
  ];
  List<String> songs = [
    "songs/abc.mp3",
    "songs/GoneGirl.mp3",
    "songs/Gulabi.mp3",
    "songs/Haiwaan.mp3",
    "songs/Khalasi.mp3",
    "songs/KisiKiYaadon.mp3",
    "songs/PehleBhiMain.mp3",
    "songs/SaariDuniya.mp3",
    "songs/Sher.mp3",
  ];



  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Center(
                child: Text(
                  'Rad.io',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              backgroundColor: Colors.white,
              leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.radio,
                  color: Colors.black,
                ),
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    )),
              ],
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.27,
                  width: MediaQuery.of(context).size.width * 0.99,
                  child: CarouselSlider.builder(
                    itemCount: imageicon.length,
                    itemBuilder: (BuildContext context, index, abc) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => tp(
                                    imagee: imageicon[abc],
                                  )));
                        },
                        child:
                        Container(
                          margin: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: AssetImage(
                                imageicon[abc],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    },
                    options: CarouselOptions(
                      height: 289.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      // aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: false,
                      autoPlayAnimationDuration: Duration(milliseconds: 600),
                      viewportFraction: 0.5,
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.only(left: 15, bottom: 8),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'LaTeSt SeLeCtIoN',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      letterSpacing: 7,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    physics: AlwaysScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: songlist.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
//print(index);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => player(
                                  songname: songlist[index],
                                  by: 'by avinash',
                                  image: imageicon[index],
                                  gana: songs[index],
                                  old: playerss,
                                  playing:isPlaying,
                                ),
                              ));
                          setState(() {
                            selectedIndex = index;
                            selectedIcon = index;
                            isPlayingList[index] = !isPlayingList[index];
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: ListTile(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                                side: BorderSide(color: Colors.grey)),
                            tileColor: selectedIndex == index
                                ? Colors.blue.shade100
                                : null,
                            // Change color when selected

                            title: Text(
                              songlist[index],
                              style: TextStyle(
                                fontSize: 21.0,
                              ),
                            ),
                            subtitle: Text('by avinash'),
                            trailing: IconButton(
                              // isSelected: selectedIcon==index,
                              splashColor: Colors.red,

                              onPressed: () {
                                if (isPlaying && selectedIndex == index) {
                                  playerss.pause();
                                  isPlaying = false;
                                } else {
                                  playerss.play(AssetSource(songs[index]));
                                  isPlaying = true;
                                }

                                selectedIndex = index;
                                setState(() {});
                              },
                              icon: Icon(
                                selectedIndex == index && isPlaying
                                    ? Icons.pause_circle
                                    : Icons.play_circle,
                                color: Colors.black,
                                // selectedIndex ==index? Icons.pause_circle : Icons.play_circle,
                                // color: Colors.black,
                              ),
                            ),
                            leading: Image.asset(
                              imageicon[index],
                              height: 80,
                              width: 40,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            )));
  }
}
