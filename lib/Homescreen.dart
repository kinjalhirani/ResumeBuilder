import 'package:flutter/material.dart';
import 'package:resumeuilder/FileldScreen.dart';
import 'package:resumeuilder/NavigationHelper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: const Text(
          "Resume Builder",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to resume builder",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: InkWell(
                onTap: () {
                 setState(() {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const FieldScreen()),
                   );
                   // NavigatorHelper.add(const FieldScreen());
                 });
                },
                child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: const BoxDecoration(color: Colors.white,
                        // borderRadius: Radius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 10.0,
                            spreadRadius: 0.5,
                          ),
                        ]),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "Create Resume",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        SizedBox(width: 20,),
                        Icon(
                          Icons.arrow_right_alt_rounded,
                          color: Colors.black,
                          size: 15,
                        )
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
