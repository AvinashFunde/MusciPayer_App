import 'package:avinash/MyHomePage.dart';
import 'package:avinash/track.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

  class player extends StatefulWidget {
   player(
      {super.key,
      required this.songname,
      required this.by,
       required this.gana,
       required this.old,
      required this.image,
      required this.playing,});

      final String songname;
      final String by;
      final String image;
      final String gana;
      final AudioPlayer old;
       bool playing;

  @override
  State<player> createState() => _playerState();


}

class _playerState extends State<player> {
  int SelectIndex = 0;
  bool isPaused=false;
  AudioPlayer player=AudioPlayer();



  List<String> songlist = [
    "Elite Street",
    "Holywings",
    "Channa mereya",
    "Oto driver",
    "Sab tera",
    "Mast Panjabi",
    "Get in troble",
    "Never forget you",
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
 

  Duration duration=Duration.zero;
  Duration popsition=Duration.zero;

  avinash() {
    Container();
  }

   @override
     // void initState() {
  //   // TODO: implement initState
  //   //player.setPlayerMode(PlayerMode.mediaPlayer);
  //   player.play(AssetSource('songs/abc.mp3'));
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);


          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.equalizer_sharp,
                color: Colors.black,
                size: 30,
              ))
        ],
        backgroundColor: Colors.white24,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.28,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      // color: Colors.cyanAccent,
                      border: Border.all(
                        color: Colors.black54,
                        width: 12,
                      )),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(
                    "${widget.image}",


                  ),
                  radius: MediaQuery.of(context).size.height * 0.11,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      // color: Colors.cyanAccent,
                      border: Border.all(
                        color: Colors.white70,
                        width: 15,
                      )),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.03,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white70,
                        width: 12,
                      )),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.circle_rounded,
                color: Colors.pink,
                size: MediaQuery.of(context).size.height * 0.01,
              ),
              SizedBox(width: 5),
              // Adjust the width as needed for spacing
              Text(
                  'Live',
                  style: TextStyle(
                    color: Colors.grey, // Faint color for the text
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 5),
              // Adjust the width as needed for spacing
              Padding(
                padding: const EdgeInsets.only(),
                child: Text("Radio Mirchi FM",
                    style: TextStyle(
                      color: Colors.black54, // Faint color for the text
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.download_outlined,
                  color: Colors.black,
                  size: 25,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share_outlined,
                  color: Colors.black,
                  size: 25,
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => BottomSheetWidget()));
                  },
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                    size: 25,
                  ),
                ),
              ),
            ],
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  '91.4 HZ',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20, top: 30),
            child: Row(
              children: [
                SizedBox(width: 120),
                Icon(Icons.mic_none_outlined,
                    color: Colors.grey,
                    size: MediaQuery.of(context).size.height * 0.02),
                Text(
                  'Now Playing',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.01,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          Text(
            "${widget.songname}",
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.02,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
          Slider(activeColor: Colors.cyanAccent,
            min: 0,
              max: duration.inSeconds.toDouble(),
              value: popsition.inSeconds.toDouble(),
              onChanged:(value) async{}),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "00.00"),
            Text("00.00")


            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(splashColor: Colors.blue,
                    iconSize: 50,
                    onPressed: () {

                    },
                    icon: Icon(
                      Icons.skip_previous_outlined,
                    )),
                IconButton(
                    iconSize: 95,
                    onPressed: () {



                     // isPaused=!isPaused;
                      if(widget.playing){
                        player.pause();
                       widget.playing=false;
                      }else{
                        player.resume();
                        widget.playing=true;
                      }
                      setState(() {  });
                    },
                    icon: Container(
                      child: Center(
                        child: Icon(
                          widget.playing ? Icons.play_arrow : Icons.pause,

                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 20,
                                spreadRadius: 5),
                          ],
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.blue.shade900,
                                Colors.blue.shade700,
                              ])),
                    )),
                IconButton(splashColor: Colors.blue,
                    iconSize: 50,
                    onPressed: () async {


                      // await player.pause();
                    //


                    },
                    icon: Icon(
                      Icons.skip_next_outlined,
                    )),
              ],
            ),
          ),
        ]),
      ),
      bottomSheet: Container(
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(30),
            ),
            gradient: LinearGradient(
                colors: [Colors.grey, Colors.black45, Colors.grey],
                end: Alignment.bottomRight)),
        height: MediaQuery.of(context).size.height * 0.10,
        child: Column(
          children: [
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30))),
                  isDismissible: true,
                  enableDrag: true,
                  context: context,
                  builder: (context) {
                    return StatefulBuilder(
                      builder: (context, set) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 7,
                                width: MediaQuery.of(context).size.width * 0.15,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                'TRACK DAY LIST',
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                            Expanded(
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: songlist.length,
                                itemBuilder: (context, index) =>
                                    GestureDetector(
                                  onTap: () {
                                    set(() {
                                      SelectIndex = index;
                                    });
                                  },
                                  child: ListTile(
                                    contentPadding: EdgeInsets.all(4),
                                    tileColor: SelectIndex == index
                                        ? Colors.blue.shade100
                                        : Colors.white,
                                    // Change color when selected
                                    title: Text(
                                      songlist[index],
                                      style: TextStyle(
                                        fontSize: 21.0,
                                      ),
                                    ),
                                    subtitle: Text('by avinash'),

                                    trailing: IconButton(
                                      onPressed: () {
                                        setState(() {

                                        });
                                      },
                                      icon: Icon(
                                        //isPlayingList[index] ? Icons.pause_circle :
                                        Icons.play_circle,
                                        color: Colors.black,
                                      ),
                                    ),
                                    leading: Image.asset(
                                      imageicon[index],
                                      height: 40,
                                      width: 40,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 17),
                child: Container(
                  height: 7,
                  width: MediaQuery.of(context).size.width * 0.18,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ),
            ),
            Center(
              child: Text(
                'TRACK DAY LIST',
                style: TextStyle(
                  color: Colors.grey.shade300,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }





}


