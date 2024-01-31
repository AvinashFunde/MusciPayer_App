import 'package:flutter/material.dart';

class trackday extends StatefulWidget {
  const trackday({super.key});

  @override
  State<trackday> createState() => _trackdayState();
}

class _trackdayState extends State<trackday> {
  int SelectIndex=1;
  List<String> songlist = [
    "Elite Street",
    "Holywings",
    "Channa mereya",
    "Oto driver",
    "Sab tera",
    "Mast Panjabi",
    "Get in troble",
    "Never forget you",
    "Always in touch",
    "raha ji ",
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
    "assets/images/vrglass.jpg",
    "assets/images/Animal-2.jpg",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount:songlist.length ,
          physics: AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
        itemBuilder: ( context,index) {
          return GestureDetector(
            onTap: (){
              setState(() {
                SelectIndex=index;
              });
            },
          child:ListTile(
            contentPadding: EdgeInsets.all(10),

            tileColor: SelectIndex == index ?
            Colors.blue.shade100 : Colors.white, // Change color when selected

            title: Text(
              songlist[index],
              style: TextStyle(
                fontSize: 21.0,
              ),
            ),
            subtitle: Text('by avinash'),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.play_circle,
                color: Colors.black,
              ),
            ),
            leading: Image.asset(
              imageicon[index],
              height: 80,
              width: 40,
            ),

          ),
          );

        },
      )
    );
  }
}
