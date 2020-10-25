import 'package:flutter/material.dart';
import './playvideo_screen.dart';

class PlaylistScreen extends StatefulWidget {
  static const routeName = '/playlist';

  @override
  _PlaylistScreenState createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context).settings.arguments as List<dynamic>;

    var videoList = arguments[0];
    final titleinfo = arguments[1];

    return Scaffold(
      backgroundColor: Color(0xffF0F2F5),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Color(0xffFFFFFF),
        centerTitle: true,
        title: Text(
          titleinfo,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: ListView.builder(
          itemBuilder: (cxt, index) {
            return Container(
              child: Column(
                children: <Widget>[
                  Ink(
                    padding: EdgeInsets.symmetric(vertical: 9),
                    color: Colors.white,
                    child: ListTile(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(PlayvideoScreen.routeName, arguments: [
                          index,
                          videoList,
                        ]);
                      },
                      leading: Icon(
                        Icons.play_circle_filled,
                        color: Color(0xffF02849),
                      ),
                      title: Text(
                        "${index + 1}. ${videoList[index]['title']}",
                        style: TextStyle(color: Colors.black),
                      ),
                      trailing: Text(
                        videoList[index]['duration'],
                        style: TextStyle(
                          color: Color(0xff606266),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          itemCount: videoList.length,
        ),
      ),
    );
  }
}
