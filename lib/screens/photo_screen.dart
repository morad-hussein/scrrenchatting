import 'package:flutter/material.dart';

class PhotoScreen extends StatefulWidget {
  PhotoScreen({Key? key}) : super(key: key);

  @override
  _PhotoScreenState createState() => _PhotoScreenState();
}

class _PhotoScreenState extends State<PhotoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Photo Screen"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: CircleAvatar(
                    radius: 90,
                    backgroundColor: Colors.blueGrey,
                    backgroundImage: AssetImage("assets/IMG_2458(1).jpg"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Container(
                    color: Colors.blue,
                    child: TextButton(
                      onPressed: () {},
                      child: Text("add Image from camera",
                        style: TextStyle(color: Colors.black),),
                    ),
                  ),
                ),
                Container(
                  color: Colors.blue,
                  child: TextButton(
                    onPressed: () {},
                    child: Text("add Image from camera",
                      style: TextStyle(color: Colors.black),),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
