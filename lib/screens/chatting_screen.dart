import 'package:chatting/screens/photo_screen.dart';
import 'package:flutter/material.dart';

class ChattingScreen extends StatefulWidget {
  ChattingScreen({Key? key}) : super(key: key);

  @override
  _ChattingScreenState createState() => _ChattingScreenState();
}

class _ChattingScreenState extends State<ChattingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        titleSpacing: 0,
        leadingWidth: 70,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_back,
                size: 24,
              ),
              SizedBox(
                width: 6,
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(
                      builder: (context) => PhotoScreen(),
    ),
                  );
                  },
                child:  CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.blueGrey,
                  backgroundImage: AssetImage("assets/IMG_2458(1).jpg"),
                  /*child: Image.asset("assets/IMG_2458(1).jpg"),*/
                ),

              ),
            ],
          ),
        ),
        title: InkWell(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  " Morad",
                  style: TextStyle(
                    fontSize: 18.2,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  " last seen at 5:28 pm",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.videocam)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ListView(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width - 55,
                      child: Card(
                        margin: EdgeInsets.only(left: 2, right: 2, bottom: 8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.multiline,
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Message",
                              prefixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.emoji_emotions)),
                              contentPadding: EdgeInsets.only(left: 4),
                              suffixIcon: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.attach_file)),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.camera_alt)),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.mic),
                                  ),
                                  /*

                                   */
                                ],
                              )),
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0, right: 2),
                    child: CircleAvatar(
                      radius: 25,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.send),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
