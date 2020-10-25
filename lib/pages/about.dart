import 'package:flutter/material.dart';

class About extends StatelessWidget {
  static const routeName = '/about';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F2F5),
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("App and video lectures are created by"),
            Divider(),
            const Text(
              "Mustafizur Rahman",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
            const Text("CSE,RUET"),
            const Text("Mobile and web application developer"),
            const Text("Former ICT teacher, Versatile ICT Center,Rajshahi"),
            const Text("Contact: 01515621522"),
          ],
        ),
      ),
    );
  }
}
