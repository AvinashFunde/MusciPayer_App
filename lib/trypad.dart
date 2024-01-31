import 'package:flutter/material.dart';

class tp extends StatefulWidget {
  const tp({super.key,required this.imagee});
  final String imagee;

  @override
  State<tp> createState() => _tpState();
}

class _tpState extends State<tp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Time-Pass"),
      ),
      body:Center(
        child: Stack(
          children: [
             Container(
               height: MediaQuery.of(context).size.height*0.6,
               width: MediaQuery.of(context).size.width*0.99,
               decoration: BoxDecoration(
                 gradient: LinearGradient(
                   colors: [Colors.black,Colors.green.shade100,]
                 )
               ),
             ),
            Padding(
              padding: const EdgeInsets.only(left:20,top: 70),
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.height*0.21,
                backgroundImage: AssetImage(
                  "${widget.imagee}"
                ),
              ),
            )
          ],
        ),
      )

    );
  }
}
