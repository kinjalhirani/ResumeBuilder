import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FieldScreen extends StatefulWidget {
  const FieldScreen({Key? key}) : super(key: key);

  @override
  _FieldScreenState createState() => _FieldScreenState();
}

class _FieldScreenState extends State<FieldScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: true,backgroundColor: Colors.white,),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Genral Information"),
              // Container(
              //   height: 250,
              //   child: ListView.builder(
              //       padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
              //       shrinkWrap: true,
              //       physics: const ClampingScrollPhysics(),
              //       // itemCount: 20,
              //       itemCount: 5,
              //       scrollDirection: Axis.horizontal,
              //       itemBuilder: (BuildContext context, int index) {
              //         return InkWell(
              //           onTap: () {
              //             // NavigatorHelper.openDialog(BookingDetails());
              //           },
              //           child:  Text("Genral Information"),
              //         );
              //       }),
              // ),

            ],
          ),
        ),
      ),
    );
  }
}
