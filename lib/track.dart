import 'package:flutter/material.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({super.key});

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
            child: ElevatedButton(
                child: Text('avinash'),
                  onPressed: () {

                    showModalBottomSheet(


                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                  ),
                  isDismissible: false,
                  enableDrag: true,
                  isScrollControlled: false,
                  backgroundColor: Colors.orange.shade300,
                  context: context,
                  builder: (context) {
                    return Column(

                      mainAxisSize: MainAxisSize.min,

                      children: [
                        Container(
                            color:Colors.black,
                          height: 10,
                          width: 50,
                        ),
                        ListTile(
                          title: Text('avinash'),
                          subtitle: Text('from gondia'),
                        ),
                        ListTile(
                          title: Text('avinash'),
                          subtitle: Text('from gondia'),
                        ),
                        ListTile(
                          title: Text('avinash'),
                          subtitle: Text('from gondia'),
                        ),
                        ListTile(
                          title: Text('avinash'),
                          subtitle: Text('from gondia'),
                        ),
                        ListTile(
                          title: Text('avinash'),
                          subtitle: Text('from gondia'),
                        ),
                        ListTile(
                          title: Text('krunal'),
                          subtitle: Text('from gondia'),
                        ),
                        ListTile(
                          title: Text('divya'),
                          subtitle: Text('from gondia'),
                        ),
                        ListTile(
                          title: Text('dipak'),
                          subtitle: Text('from gondia'),
                        ),
                        ListTile(
                          title: Text('vishakha '),
                          subtitle: Text('from gondia'),
                        ),
                        ListTile(
                          title: Text('rutika'),
                          subtitle: Text('from gondia'),
                          iconColor: Colors.red,
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          )),
    );
  }
}


// bottomSheet: Container
// (
// decoration: BoxDecoration(
// color: Colors.grey,
// borderRadius: BorderRadius.vertical(top: Radius.circular(30))
// ),
//
// height: MediaQuery
//     .of(context)
//     .size
//     .height * 0.10,
// child: Column(
// children: [
// InkWell(
// onTap: () {
// showModalBottomSheet(
// isDismissible: true,
// enableDrag: true,
// context: context, builder: (context) {
// return ListView.builder(shrinkWrap: true,
// itemCount: songlist.length,
//
//
// itemBuilder: (context, index){
// return GestureDetector(
// onTap: (){
// setState(() {
// SelectIndex=index;
// });
// },
// child:ListTile(
// contentPadding: EdgeInsets.all(10),
//
// tileColor: SelectIndex == index ?
// Colors.red : Colors.white, // Change color when selected
//
// title: Text(
// songlist[index],
// style: TextStyle(
// fontSize: 21.0,
// ),
// ),
// subtitle: Text('by avinash'),
// trailing: IconButton(
// onPressed: () {},
// icon: Icon(
// Icons.play_circle,
// color: Colors.black,
// ),
// ),
// leading: Image.asset(
// imageicon[index],
// height: 80,
// width: 40,
// ),
//
// ),
// );
// },
// );
// },);
// },
//
// child: Padding(
// padding: const EdgeInsets.only(top: 10, bottom: 17),
// child: Container(
// height: 15,
// width: MediaQuery
//     .of(context)
//     .size
//     .width * 0.20,
// decoration: BoxDecoration(
// color: Colors.lightBlueAccent.shade100,
// borderRadius: BorderRadius.all(Radius.circular(20))),
// ),
// ),
// ),
// Center(
// child: Text(
// 'TRACK DAY LIST',
// style: TextStyle(
// color: Colors.grey.shade300,
// fontWeight: FontWeight.bold,
// fontSize: 17,
// ),
// ),
// ),
// ],
// ),
// ),