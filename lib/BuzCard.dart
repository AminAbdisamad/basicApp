import 'package:flutter/material.dart';

class BuzCard extends StatefulWidget {
  const BuzCard({Key key}) : super(key: key);

  @override
  _BuzCardState createState() => _BuzCardState();
}

class _BuzCardState extends State<BuzCard> {
  int levelCounter  = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[700],
      appBar:AppBar(
        title: Text("Buzz ID Card"),
        backgroundColor: Colors.deepPurple[800],
        elevation:0.0,

      ),
      body:Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/image_1.jpeg"),
                radius: 50.0,
              ),
            ),
            Divider(
              height:60.0,
              color:Colors.deepPurple[700]
            ),
            Text("Name",
            style:TextStyle(
              color:Colors.grey[400],
              fontSize:15.0,
              letterSpacing: 2.0,

          )),

          SizedBox(height: 5.0),
          Text("Aminux",
            style:TextStyle(
              color:Colors.yellow[400],
              fontSize:28.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
          )),

          SizedBox(height: 20.0),
          Text("Position",
              style: TextStyle(
              color:Colors.grey[400],
              fontSize:15.0,
              letterSpacing: 2.0,
              ),
          
          ),
          SizedBox(height: 5.0),
          Text("Software Engineer",
            style:TextStyle(
              color:Colors.yellow[400],
              fontSize:28.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
            )),
            SizedBox(height: 20.0),
            Row(
              children:<Widget>[
               Icon(
                 Icons.email,
                 color:Colors.grey[400]
               ),
              SizedBox(width: 10.0),
              Text("Email",
              style: TextStyle(
              color:Colors.grey[400],
              fontSize:15.0,
              letterSpacing: 2.0,
              )),
              SizedBox(height: 5.0),
              ]
            ),
             Text("Aminux@gmail.com",
            style:TextStyle(
              color:Colors.yellow[400],
              fontSize:28.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
            ),
          
          ),
          SizedBox(height: 20.0),
          Text("Current Level",
              style: TextStyle(
              color:Colors.grey[400],
              fontSize:15.0,
              letterSpacing: 2.0,
              ),
          
          ),
          SizedBox(height: 5.0),
          Text("$levelCounter",
            style:TextStyle(
              color:Colors.yellow[400],
              fontSize:28.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
            )),

            
          ]
        ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              levelCounter ++;
            });
          },
        child:Icon(
          Icons.add
        ),
        backgroundColor: Colors.deepPurple[900],
        ),
    );
  }
}


